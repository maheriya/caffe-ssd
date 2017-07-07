#!/bin/csh -f

## This patch is used to create batchfiles for TensorRT 2 INT8 calibration.
## After the patch, rebuild caffe-ssd. Set environment varible
## TENSORRT_INT8_BATCH_DIRECTORY to point a directory where batchfiles should
## be saved (dir must exist)
## Retrain using train.prototxt for your network to create batchfiles. 1000 
## iterations will create 1003 batchfiles (around 32000 samples). Probably run
## for 2000 iterations. The sampleINI8 requires 50000 samples in batchfiles.
## These batchfiles will be used by 
patch -p1 < ~/Downloads/nvidia/TensorRT-2.1.2/targets/x86_64-linux-gnu/samples/sampleINT8/int8_caffe.patch
