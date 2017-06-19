#!/bin/csh -f

set model = "dvia_ssd_demo/vgg_test.prototxt"
set weights = "dvia_ssd_demo/vgg_iter_60000.caffemodel"

cd ${HOME}/Projects/caffe-ssd
./build/tools/caffe test \
--model="$model" \
--weights="$weights" \
--iterations="536870911" \
--gpu 0
