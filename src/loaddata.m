function [TrainX,TrainY] = loaddata(isSubsetData)
%--file names--%
%full data batch

if isSubsetData==false
  folder_name = '../cifar-10-batches-mat/';
  filename_root = 'data_batch_';
  fprintf('loading data batch \n');
else
  folder_name = '../subset_CIFAR10/';
  filename_root = 'small_data_batch_';
  fprintf('loading small data batch \n');
end

testfile = 'test_batch.mat';
metafile = 'batches.meta.mat';


fprintf('loading data batch 1/6 \n');
db1 = load(strcat(folder_name,filename_root,'1.mat'));

fprintf('loading data batch 2/6 \n');
db2 = load(strcat(folder_name,filename_root,'2.mat'));

fprintf('loading data batch 3/6 \n');
db3 = load(strcat(folder_name,filename_root,'3.mat'));

fprintf('loading data batch 4/6 \n');
db4 = load(strcat(folder_name,filename_root,'4.mat'));

fprintf('loading data batch 5/6 \n');
db5 = load(strcat(folder_name,filename_root,'5.mat'));

TrainX = double([db1.data; db2.data; db3.data; db4.data; db5.data]);
TrainY = double([db1.labels; db2.labels; db3.labels; db4.labels; db5.labels]);
clear db1 db2 db3 db4 db5;
fprintf('loading complete \n');
