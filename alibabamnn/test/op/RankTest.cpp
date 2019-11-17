//
//  RankTest.cpp
//  MNNTests
//
//  Created by MNN on 2019/01/15.
//  Copyright © 2018, Alibaba Group Holding Limited
//

#include "Interpreter.hpp"
#include "MNNTestSuite.h"
#include "Session.hpp"
#include "TFQuantizeOp_generated.h"
#include "TensorUtils.hpp"
#include "TestUtils.h"

using namespace MNN;

static Interpreter *create(int b, int c, int h, int w) {
    flatbuffers::FlatBufferBuilder fbb;
    std::vector<flatbuffers::Offset<Op>> vec;

    { // input
        auto dims = fbb.CreateVector(std::vector<int>({b, h, w, c}));
        InputBuilder ib(fbb);
        ib.add_dims(dims);
        auto input = ib.Finish();
        auto name  = fbb.CreateString("input");
        auto iv    = fbb.CreateVector(std::vector<int>({0}));
        auto ov    = fbb.CreateVector(std::vector<int>({0}));

        OpBuilder builder(fbb);
        builder.add_type(OpType_Input);
        builder.add_name(name);
        builder.add_inputIndexes(iv);
        builder.add_outputIndexes(ov);
        builder.add_main_type(OpParameter_Input);
        builder.add_main(flatbuffers::Offset<void>(input.o));
        vec.push_back(builder.Finish());
    }
    {
        auto rank = RankBuilder(fbb).Finish();
        auto name = fbb.CreateString("rank");
        auto iv   = fbb.CreateVector(std::vector<int>({0}));
        auto ov   = fbb.CreateVector(std::vector<int>({1}));
        OpBuilder builder(fbb);
        builder.add_type(OpType_Rank);
        builder.add_name(name);
        builder.add_inputIndexes(iv);
        builder.add_outputIndexes(ov);
        builder.add_main_type(OpParameter_Rank);
        builder.add_main(flatbuffers::Offset<void>(rank.o));
        vec.push_back(builder.Finish());
    }

    BlobBuilder fb(fbb);
    fb.add_dataType(DataType_DT_FLOAT);
    fb.add_dataFormat(MNN_DATA_FORMAT_NHWC);
    auto flt = fb.Finish();
    BlobBuilder qb(fbb);
    qb.add_dataType(DataType_DT_INT32);
    qb.add_dataFormat(MNN_DATA_FORMAT_NHWC);
    auto qnt = qb.Finish();

    std::vector<flatbuffers::Offset<TensorDescribe>> desc;
    {
        TensorDescribeBuilder tdb(fbb);
        tdb.add_index(0);
        tdb.add_blob(flatbuffers::Offset<Blob>(flt.o));
        desc.push_back(tdb.Finish());
    }
    {
        TensorDescribeBuilder tdb(fbb);
        tdb.add_index(1);
        tdb.add_blob(flatbuffers::Offset<Blob>(qnt.o));
        desc.push_back(tdb.Finish());
    }

    auto ops    = fbb.CreateVector(vec);
    auto names  = fbb.CreateVectorOfStrings({"input", "output"});
    auto extras = fbb.CreateVector(desc);
    NetBuilder net(fbb);
    net.add_oplists(ops);
    net.add_tensorName(names);
    net.add_extraTensorDescribe(extras);
    net.add_sourceType(NetSource_TENSORFLOW);
    fbb.Finish(net.Finish());
    return Interpreter::createFromBuffer((const char *)fbb.GetBufferPointer(), fbb.GetSize());
}

static Tensor *infer(const Interpreter *net, Session *session) {
    net->runSession(session);
    return net->getSessionOutputAll(session).begin()->second;
}

class RankTest : public MNNTestCase {
public:
    virtual ~RankTest() = default;
    virtual bool run() {
        for (int b = 1; b <= 2; b++) {
            for (int h = 1; h <= 8; h *= 2) {
                for (int w = 1; w <= 8; w *= 2) {
                    for (int c = 1; c <= 8; c *= 2) {
                        dispatch([&](MNNForwardType backend) -> void {
                            if (backend == MNN_FORWARD_CPU)
                                return;
                            // nets
                            auto net = create(b, c, h, w);
                            auto CPU = createSession(net, MNN_FORWARD_CPU);
                            auto GPU = createSession(net, backend);
                            if (!CPU || !GPU) {
                                delete net;
                                return;
                            }

                            // input
                            auto input = new Tensor(4, Tensor::TENSORFLOW);
                            {
                                input->buffer().dim[0].extent = b;
                                input->buffer().dim[1].extent = h;
                                input->buffer().dim[2].extent = w;
                                input->buffer().dim[3].extent = c;
                                TensorUtils::setLinearLayout(input);
                                input->buffer().host = (uint8_t *)malloc(input->size());
                                auto host            = net->getSessionInput(CPU, NULL);
                                auto device          = net->getSessionInput(GPU, NULL);
                                net->getBackend(CPU, host)->onCopyBuffer(input, host);
                                net->getBackend(GPU, device)->onCopyBuffer(input, device);
                            }

                            // infer
                            assert(TensorUtils::compareTensors(infer(net, GPU), infer(net, CPU), 0.01));

                            // clean up
                            free(input->buffer().host);
                            delete input;
                            delete net;
                        });
                    }
                }
            }
        }
        return true;
    }
};
MNNTestSuiteRegister(RankTest, "op/rank");
