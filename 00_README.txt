1. Training
There are various ssd_*.py scripts to train different networks with differnt DB:
%> python examples/ssd/ssd_dvia_alexnet.py

2. Analysis
The included tools/extra/plot_training_log.py.example script creates various plots from the log file:
%> python tools/extra/plot_training_log.py.example 0 ./plot.png jobs/ALEXNet/DVIADETDB/SSD_300x300.2017Jun12.mono/ALEX_DVIADETDB_SSD_300x300.log

3. Testing
There are a few ssd_*.ipynb  scripts in example/ directory to run detection using trained SSD models. For example:
%> jupyter notebook ./ssd_dvia_detect_mono.ipynb


#####
Mono/Grayscale training:
Jun12: Without pretrained model. No freeze_layers. All layers trained from scratch.
Jun13: With pretrained model. freeze_layers = ['conv2']. conv2 locked while conv1 trained from scratch.
Jun14: With pretrained model. freeze_layers = [] -- conv1_gray trained from scratch; others start from pretrained params
