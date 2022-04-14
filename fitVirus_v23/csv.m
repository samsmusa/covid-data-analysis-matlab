n0 =10;
% res = [samplaDate' sampleC' K r C0 tau dend dCpeak tpeak dpeak R2];
tab = table(datestr(res(n0:end,1)),res(n0:end,2),res(n0:end,3),res(n0:end,4),res(n0:end,5),res(n0:end,6),datestr(res(n0:end,7)),res(n0:end,8),res(n0:end,9),datestr(res(n0:end,10)),res(n0:end,11),'VariableNames',{'date' 'cases' 'K' 'r' 'C0' 'tau' 'end_date' 'dCdt' 'tpeak' 'peak' 'R2'});
writetable(tab,'table.csv')