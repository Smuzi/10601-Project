%--file names--%
%full data batch
folder_name = '../cifar-10-batches-mat/';
filename_root = 'data_batch_';

%for small data batch, uncomment and replace:

%folder_name = '../subset_CIFAR10/';
%filename_root = 'small_data_batch_';
%----%
testfile = 'test_batch.mat';
metafile = 'batches.meta.mat';


fprintf('loading data batch 1/6');
db1 = load(strcat(folder_name,filename_root,'1.mat');

fprintf('loading data batch 2/6');
db2 = load(strcat(folder_name,filename_root,'2.mat');

fprintf('loading data batch 3/6');
db3 = load(strcat(folder_name,filename_root,'3.mat');

fprintf('loading data batch 4/6');
db4 = load(strcat(folder_name,filename_root,'4.mat');

fprintf('loading data batch 5/6');
db5 = load(strcat(folder_name,filename_root,'5.mat');

trainX = double([db1.data; db2.data; db3.data; db4.data; db5.data]);
trainY = double([db1.labels; db2.labels; db3.labels; db4.labels; db5.labels]);

fprintf('loading completed');