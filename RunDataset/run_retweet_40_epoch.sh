device=0
data=data/NeuralHawkesData/data_retweet/
batch=16
n_head=3
n_layers=3
d_model=64
d_rnn=64
d_inner=256
d_k=16
d_v=16
dropout=0.1
lr=1e-2
smooth=0.1
epoch=40
log=./ReproduceRessult_40/log_retweet_40_epoch.txt
CUDA_DEVICE_ORDER=PCI_BUS_ID CUDA_VISIBLE_DEVICES=$device python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log
