//
//  GatherTest.cpp
//  MNNTests
//
//  Created by MNN on 2019/01/15.
//  Copyright © 2018, Alibaba Group Holding Limited
//

#include "Interpreter.hpp"
#include "MNNTestSuite.h"
#include "MNN_generated.h"
#include "Session.hpp"
#include "TensorUtils.hpp"
#include "TestUtils.h"

using namespace MNN;

static Interpreter *create(int o, int s, int b, int c, int h, int w) {
    flatbuffers::FlatBufferBuilder fbb;
    std::vector<flatbuffers::Offset<Op>> vec;

    {
        auto dims = fbb.CreateVector(std::vector<int>({o, s}));
        InputBuilder ib(fbb);
        ib.add_dims(dims);
        ib.add_dtype(DataType_DT_FLOAT);
        ib.add_dformat(MNN_DATA_FORMAT_NHWC);
        auto input = ib.Finish();
        auto name  = fbb.CreateString("input");
        auto iv    = fbb.CreateVector(std::vector<int>({}));
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
        auto dims = fbb.CreateVector(std::vector<int>({b, h, w, c}));
        InputBuilder ib(fbb);
        ib.add_dims(dims);
        ib.add_dtype(DataType_DT_INT32);
        ib.add_dformat(MNN_DATA_FORMAT_NHWC);
        auto input = ib.Finish();
        auto name  = fbb.CreateString("indices");
        auto iv    = fbb.CreateVector(std::vector<int>({}));
        auto ov    = fbb.CreateVector(std::vector<int>({1}));

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
        auto gather = GatherBuilder(fbb);
        gather.add_Tindices(DataType_DT_INT32);
        gather.add_Tparams(DataType_DT_FLOAT);
        auto name = fbb.CreateString("gather");
        auto iv   = fbb.CreateVector(std::vector<int>({0, 1}));
        auto ov   = fbb.CreateVector(std::vector<int>({2}));

        OpBuilder builder(fbb);
        builder.add_type(OpType_Gather);
        builder.add_name(name);
        builder.add_inputIndexes(iv);
        builder.add_outputIndexes(ov);
        builder.add_main_type(OpParameter_Gather);
        builder.add_main(flatbuffers::Offset<void>(gather.Finish().o));
        vec.push_back(builder.Finish());
    }

    BlobBuilder fb(fbb), qb(fbb);
    fb.add_dataType(DataType_DT_INT32);
    fb.add_dataFormat(MNN_DATA_FORMAT_NHWC);
    qb.add_dataType(DataType_DT_INT32);
    qb.add_dataFormat(MNN_DATA_FORMAT_NHWC);
    auto flt = fb.Finish(), qnt = qb.Finish();

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
    {
        TensorDescribeBuilder tdb(fbb);
        tdb.add_index(2);
        tdb.add_blob(flatbuffers::Offset<Blob>(flt.o));
        desc.push_back(tdb.Finish());
    }

    auto ops    = fbb.CreateVector(vec);
    auto names  = fbb.CreateVectorOfStrings({"input", "indices", "output"});
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

class GatherTest : public MNNTestCase {
public:
    virtual ~GatherTest() = default;
    virtual bool run() {
        for (int o = 1; o <= 4; o *= 2) {
            for (int s = 1; s <= 4; s *= 2) {
                for (int b = 1; b <= 2; b *= 2) {
                    for (int h = 1; h <= 4; h *= 2) {
                        for (int w = 1; w <= 4; w *= 2) {
                            for (int c = 1; c <= 4; c *= 2) {
                                dispatch([&](MNNForwardType backend) -> void {
                                    if (backend == MNN_FORWARD_CPU)
                                        return;
                                    // nets
                                    auto net = create(o, s, b, c, h, w);
                                    auto CPU = createSession(net, MNN_FORWARD_CPU);
                                    auto GPU = createSession(net, backend);
                                    if (!CPU || !GPU) {
                                        delete net;
                                        return;
                                    }

                                    // input
                                    auto input = new Tensor(2, Tensor::TENSORFLOW);
                                    {
                                        input->setType(DataType_DT_FLOAT);
                                        input->buffer().dim[0].extent = o;
                                        input->buffer().dim[1].extent = s;
                                        TensorUtils::setLinearLayout(input);
                                        input->buffer().host = (uint8_t *)malloc(input->size());
                                        for (int i = 0; i < o * s; i++) {
                                            input->host<float>()[i] = rand() % 255 / 255.f;
                                        }
                                        auto host   = net->getSessionInput(CPU, "input");
                                        auto device = net->getSessionInput(GPU, "input");
                                        net->getBackend(CPU, host)->onCopyBuffer(input, host);
                                        net->getBackend(GPU, device)->onCopyBuffer(input, device);
                                    }

                                    // indices
                                    auto indices = new Tensor(4, Tensor::TENSORFLOW);
                                    {
                                        indices->setType(DataType_DT_INT32);
                                        indices->buffer().dim[0].extent = b;
                                        indices->buffer().dim[1].extent = h;
                                        indices->buffer().dim[2].extent = w;
                                        indices->buffer().dim[3].extent = c;
                                        TensorUtils::setLinearLayout(indices);
                                        indices->buffer().host = (uint8_t *)malloc(indices->size());
                                        for (int i = 0; i < b * c * h * w; i++) {
                                            indices->host<int>()[i] = rand() % o;
                                        }
                                        auto host   = net->getSessionInput(CPU, "indices");
                                        auto device = net->getSessionInput(GPU, "indices");
                                        net->getBackend(CPU, host)->onCopyBuffer(indices, host);
                                        net->getBackend(GPU, device)->onCopyBuffer(indices, device);
                                    }

                                    // infer
                                    assert(TensorUtils::compareTensors(infer(net, GPU), infer(net, CPU), 0.01));

                                    // clean up
                                    free(input->buffer().host);
                                    free(indices->buffer().host);
                                    delete input;
                                    delete indices;
                                    delete net;
                                });
                            }
                        }
                    }
                }
            }
        }
        return true;
    }
};
MNNTestSuiteRegister(GatherTest, "op/gather");
