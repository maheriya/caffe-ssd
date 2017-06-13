1. Training
There are various ssd_*.py scripts to train different networks with differnt DB:
%> python examples/ssd/ssd_dvia_alexnet.py

2. Analysis
The included tools/extra/plot_training_log.py.example script creates various plots from the log file:
%> python tools/extra/plot_training_log.py.example 0 ./plot.png jobs/ALEXNet/DVIADETDB/SSD_300x300.2017Jun12.mono/ALEX_DVIADETDB_SSD_300x300.log

3. Testing
There are a few ssd_*.ipynb  scripts in example/ directory to run detection using trained SSD models. For example:
%> jupyter notebook ./ssd_dvia_detect_mono.ipynb

