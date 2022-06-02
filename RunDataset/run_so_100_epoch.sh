device=0
data=data/NeuralHawkesData/data_so/fold1/
batch=4
n_head=4
n_layers=4
d_model=512
d_rnn=64
d_inner=1024
d_k=512
d_v=512
dropout=0.1
lr=1e-4
smooth=0.1
epoch=100
# log=./ReproduceRessult_100/log_so_100_epoch_{}.txt
for i in {1..5}
do
   echo "Run No.$i"
   log=./ReproduceRessult_100/log_so_${i}_100_epoch_{}.txt
   CUDA_DEVICE_ORDER=PCI_BUS_ID CUDA_VISIBLE_DEVICES=$device python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log
done
# CUDA_DEVICE_ORDER=PCI_BUS_ID CUDA_VISIBLE_DEVICES=$device python Main.py -data $data -batch $batch -n_head $n_head -n_layers $n_layers -d_model $d_model -d_rnn $d_rnn -d_inner $d_inner -d_k $d_k -d_v $d_v -dropout $dropout -lr $lr -smooth $smooth -epoch $epoch -log $log
