//
//  TestUtils.h
//  MNN
//
//  Created by MNN on 2019/01/15.
//  Copyright © 2018, Alibaba Group Holding Limited
//

#ifndef TestUtils_h
#define TestUtils_h

#include <assert.h>
#include <stdio.h>
#include <functional>
#include <string>
#include "MNNForwardType.h"
#include "Session.hpp"
#include "Tensor.hpp"
#include <math.h>

/**
 * @brief create session with net and backend
 * @param net       given net
 * @param backend   given backend
 * @return created session
 */
MNN::Session* createSession(MNN::Interpreter* net, MNNForwardType backend);

/**
 * @brief dispatch payload on all available backends
 * @param payload   test to perform
 */
void dispatch(std::function<void(MNNForwardType)> payload);
/**
 * @brief dispatch payload on given backend
 * @param payload   test to perform
 * @param backend   given backend
 */
void dispatch(std::function<void(MNNForwardType)> payload, MNNForwardType backend);

/**
 @brief check the result with the ground truth
 @param result data
 @param right data
 @param threshold
 */
template <typename T>
bool checkVector(const T* result, const T* rightData, int size, T threshold){
    MNN_ASSERT(result != nullptr);
    MNN_ASSERT(rightData != nullptr);
    MNN_ASSERT(size >= 0);
    for(int i = 0; i < size; ++i){
        if(fabs(result[i] - rightData[i]) > threshold){
            return false;
        }
    }
    return true;
}

#endif /* TestUtils_h */
