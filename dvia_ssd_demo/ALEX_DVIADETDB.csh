#!/bin/csh -f

set model = "dvia_ssd_demo/ALEX_DVIADETDB_SSD_300x300_deploy.prototxt"
set weights = "dvia_ssd_demo/ALEX_DVIADETDB_SSD_300x300_iter_300000.caffemodel"

cd ${HOME}/Projects/caffe-ssd
./build/tools/caffe test \
--model="$model" \
--weights="$weights" \
--iterations="536870911" \
--gpu 0
