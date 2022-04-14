close all
addpath('CV19')
addpath('data')
%w1 - weigth for values, w2 - weight for derivatives, prn - print results
% res1 = fitVirusCV19(@getDataBangladesh_Mar);
[res2,t] = fitVirusCV19(@getDataBangladesh_Aug);
% res3 = fitVirusCV19(@getDataBangladesh_Jun);

