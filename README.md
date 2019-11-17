# Object Detection

The objective of this repository is to test two different Object Detection Inference implementations: [Tensorflow Lite](https://github.com/tensorflow/examples.git) and [Alibaba MNN](https://github.com/alibaba/MNN.git).

The Android app is found in the following directories:
------------------------------------------------------

(A) TFLite: tensorflow/android_app/

(B) Alibaba MNN: alibabamnn/demo/android/

Instructions for running the benchmark scripts:
-----------------------------------------------

(A) TFLite:

1. Go to tensorflow/benchmarking and run ./configure

2. Utilize bazel command to set up benchmarks that need to be executed on the device:
bazel build -c opt \
  --config=android_arm \
  --cxxopt='--std=c++11' \
  --copt=-DTFLITE_PROFILING_ENABLED \
  tensorflow/lite/tools/benchmark:benchmark_model

3. Copy the computation to be executed and change permissions
adb push bazel-bin/tensorflow/lite/tools/benchmark/benchmark_model /data/local/tmp
adb shell chmod +x /data/local/tmp/benchmark_model

4. Copy and execute the command:
adb push deeplab_257.tflite /data/local/tmp
adb shell /data/local/tmp/benchmark_model --graph=/data/local/tmp/deeplab_257.tflite --num_threads=4

(B) Alibaba MNN:

1. Go to alibabamnn/benchmark and run ./bench_android.sh

Models:
-------
(A) For converting Caffe to TensorFlow follow instructions at:

https://github.com/linkfluence/caffe-tensorflow

(B) For converting caffe to MNN, use the mnnconvert that comes along with the Alibaba MNN repository

Links for downloading the models:
---------------------------------
(A) Using MobileNet V1 downloaded from:

https://github.com/shicai/MobileNet-Caffe/

(B) Using MobileNet V2 downloaded from:

https://github.com/shicai/MobileNet-Caffe/

http://download.tensorflow.org/models/tflite_11_05_08/mobilenet_v2_1.0_224.tgz

http://download.tensorflow.org/models/tflite_11_05_08/mobilenet_v2_1.0_224_quant.tgz
