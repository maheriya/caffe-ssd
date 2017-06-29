#!/bin/csh -f

set size = "300x300"
set db = ''
if ($#argv > 0) then
  set db = $argv[1]
  if ($#argv > 1) then
    set size = $argv[2]
  endif
endif

echo "db: [$db]"
echo "size: [$size]"
# Training loss
python tools/extra/plot_training_log.py 6 ./plot_trnloss.png jobs/ALEXNet/DVIADETDB/SSD_$size$db/ALEX_DVIADETDB_SSD_$size.log &
sleep 1
# Test accuracy
python tools/extra/plot_training_log.py 0 ./plot_testaccuracy.png jobs/ALEXNet/DVIADETDB/SSD_$size$db/ALEX_DVIADETDB_SSD_$size.log &
sleep 1
# Learning rate
python tools/extra/plot_training_log.py 4 ./plot_learningrate.png jobs/ALEXNet/DVIADETDB/SSD_$size$db/ALEX_DVIADETDB_SSD_$size.log &
sleep 1
