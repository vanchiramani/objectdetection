//
//  UnaryTest.cpp
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

static Interpreter *create(UnaryOpOperation type, int b, int c, int h, int w, bool tensorflow) {
    flatbuffers::FlatBufferBuilder fbb;
    std::vector<flatbuffers::Offset<Op>> vec;
    {
        auto dims = fbb.CreateVector(tensorflow ? std::vector<int>({b, h, w, c}) : std::vector<int>({b, c, h, w}));
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
        auto ub = UnaryOpBuilder(fbb);
        ub.add_opType(type);
        ub.add_T(DataType_DT_FLOAT);
        auto unary = ub.Finish();

        auto name = fbb.CreateString("unary");
        auto iv   = fbb.CreateVector(std::vector<int>({0}));
        auto ov   = fbb.CreateVector(std::vector<int>({1}));
        OpBuilder builder(fbb);
        builder.add_type(OpType_UnaryOp);
        builder.add_name(name);
        builder.add_inputIndexes(iv);
        builder.add_outputIndexes(ov);
        builder.add_main_type(OpParameter_UnaryOp);
        builder.add_main(flatbuffers::Offset<void>(unary.o));
        vec.push_back(builder.Finish());
    }

    auto ops   = fbb.CreateVector(vec);
    auto names = fbb.CreateVectorOfStrings({"input", "output"});
    if (tensorflow) {
        BlobBuilder builder(fbb);
        builder.add_dataType(DataType_DT_FLOAT);
        builder.add_dataFormat(MNN_DATA_FORMAT_NHWC);
        auto blob = builder.Finish();

        std::vector<flatbuffers::Offset<TensorDescribe>> desc;
        {
            TensorDescribeBuilder tdb(fbb);
            tdb.add_index(0);
            tdb.add_blob(flatbuffers::Offset<Blob>(blob.o));
            desc.push_back(tdb.Finish());
        }
        {
            TensorDescribeBuilder tdb(fbb);
            tdb.add_index(1);
            tdb.add_blob(flatbuffers::Offset<Blob>(blob.o));
            desc.push_back(tdb.Finish());
        }
        auto extras = fbb.CreateVector(desc);
        NetBuilder net(fbb);
        net.add_oplists(ops);
        net.add_tensorName(names);
        net.add_extraTensorDescribe(extras);
        net.add_sourceType(NetSource_TENSORFLOW);
        fbb.Finish(net.Finish());
    } else {
        NetBuilder net(fbb);
        net.add_oplists(ops);
        net.add_tensorName(names);
        fbb.Finish(net.Finish());
    }
    return Interpreter::createFromBuffer((const char *)fbb.GetBufferPointer(), fbb.GetSize());
}

static Tensor *infer(const Interpreter *net, Session *session) {
    net->runSession(session);
    return net->getSessionOutputAll(session).begin()->second;
}

class UnaryCaffeTest : public MNNTestCase {
public:
    virtual ~UnaryCaffeTest() = default;
    virtual bool run() {
        int valids[] = {UnaryOpOperation_SQUARE, UnaryOpOperation_RSQRT, UnaryOpOperation_NEG, UnaryOpOperation_EXP,
                        UnaryOpOperation_SQRT,   UnaryOpOperation_ABS,   UnaryOpOperation_CEIL};
        for (int i = 0; i < sizeof(valids) / sizeof(int); i++) {
            UnaryOpOperation optype = (UnaryOpOperation)valids[i];
            for (int b = 1; b <= 2; b++) {
                for (int c = 4; c <= 8; c *= 2) {
                    for (int h = 1; h <= 8; h *= 2) {
                        for (int w = 1; w <= 8; w *= 2) {
                            dispatch([&](MNNForwardType backend) -> void {
                                if (backend == MNN_FORWARD_CPU)
                                    return;
                                auto net = create(optype, b, c, h, w, false);
                                auto CPU = createSession(net, MNN_FORWARD_CPU);
                                auto GPU = createSession(net, backend);
                                if (!CPU || !GPU) {
                                    delete net;
                                    return;
                                }

                                // input/output
                                auto input = new Tensor(4, Tensor::CAFFE);
                                {
                                    input->buffer().dim[0].extent = b;
                                    input->buffer().dim[1].extent = c;
                                    input->buffer().dim[2].extent = h;
                                    input->buffer().dim[3].extent = w;
                                    TensorUtils::setLinearLayout(input);
                                    input->buffer().host = (uint8_t *)malloc(input->size());
                                    for (int i = 0; i < b * c * h * w; i++) {
                                        input->host<float>()[i] = rand() % 100 / 100.f;
                                    }
                                    auto host   = net->getSessionInput(CPU, NULL);
                                    auto device = net->getSessionInput(GPU, NULL);
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
        }
        return true;
    }
};

class UnaryTensorflowTest : public MNNTestCase {
public:
    virtual ~UnaryTensorflowTest() = default;
    virtual bool run() {
        int valids[] = {UnaryOpOperation_SQUARE, UnaryOpOperation_RSQRT, UnaryOpOperation_NEG, UnaryOpOperation_EXP,
                        UnaryOpOperation_SQRT,   UnaryOpOperation_ABS,   UnaryOpOperation_CEIL};
        for (int i = 0; i < sizeof(valids) / sizeof(int); i++) {
            UnaryOpOperation optype = (UnaryOpOperation)valids[i];
            for (int b = 1; b <= 2; b++) {
                for (int c = 4; c <= 8; c *= 2) {
                    for (int h = 1; h <= 8; h *= 2) {
                        for (int w = 1; w <= 8; w *= 2) {
                            dispatch([&](MNNForwardType backend) -> void {
                                if (backend == MNN_FORWARD_CPU)
                                    return;
                                auto net = create(optype, b, c, h, w, true);
                                auto CPU = createSession(net, MNN_FORWARD_CPU);
                                auto GPU = createSession(net, backend);
                                if (!CPU || !GPU) {
                                    delete net;
                                    return;
                                }

                                // input/output
                                auto input = new Tensor(4, Tensor::TENSORFLOW);
                                {
                                    input->buffer().dim[0].extent = b;
                                    input->buffer().dim[1].extent = h;
                                    input->buffer().dim[2].extent = w;
                                    input->buffer().dim[3].extent = c;
                                    TensorUtils::setLinearLayout(input);
                                    input->buffer().host = (uint8_t *)malloc(input->size());
                                    for (int i = 0; i < b * c * h * w; i++) {
                                        input->host<float>()[i] = rand() % 100 / 100.f;
                                    }
                                    auto host   = net->getSessionInput(CPU, NULL);
                                    auto device = net->getSessionInput(GPU, NULL);
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
        }
        return true;
    }
};
MNNTestSuiteRegister(UnaryCaffeTest, "op/unary/caffe");
MNNTestSuiteRegister(UnaryTensorflowTest, "op/unary/tensorflow");
