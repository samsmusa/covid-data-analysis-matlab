close all
addpath('CV19')
addpath('data')
%w1 - weigth for values, w2 - weight for derivatives, prn - print results
res = fitVirusCV19(@getDataBangladesh_Jun,'prn','on','jpg','on','jpres','-r300');
hold on
coef4 = fitVirus03(@getDataBangladesh_Jun);
