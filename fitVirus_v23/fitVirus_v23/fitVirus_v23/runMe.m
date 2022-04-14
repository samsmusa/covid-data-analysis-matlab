% driver
addpath('data')
close all
coef1 = fitVirus03(@getDataWorld_Jan);
coef2 = fitVirus03(@getDataWorld_Feb);
coef3 = fitVirus03(@getDataWorld_Mar);
coef4 = fitVirus03(@getDataWorld_Apr);
coef5 = fitVirus03(@getDataWorld_May);
coef6 = fitVirus03(@getDataWorld_Jun);
coef7 = fitVirus03(@getDataWorld_Jul);
coef8 = fitVirus03(@getDataWorld_Aug);
coef9 = fitVirus03(@getDataWorld_Sep);
coef10 = fitVirus03(@getDataWorld_Oct);
coef11 = fitVirus03(@getDataWorld_Nov);
coef12 = fitVirus03(@getDataWorld_Dec);