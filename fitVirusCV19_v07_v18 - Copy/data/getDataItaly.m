function [country,C,date0] = getDataItaly()
%GETDATAITALY Coronavirus data for Italy
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Italy';
C = [
         17 % 22-Feb-2020
         79 % 23-Feb-2020
        132 % 24-Feb-2020
        229 % 25-Feb-2020
        322 % 26-Feb-2020
        400 % 27-Feb-2020
        650 % 28-Feb-2020
        888 % 29-Feb-2020
       1128 % 01-Mar-2020
       1689 % 02-Mar-2020
       2036 % 03-Mar-2020
       2502 % 04-Mar-2020
       3089 % 05-Mar-2020
       3858 % 06-Mar-2020
       4636 % 07-Mar-2020
       5883 % 08-Mar-2020
       7375 % 09-Mar-2020
       9172 % 10-Mar-2020
      10149 % 11-Mar-2020
      12462 % 12-Mar-2020
      15113 % 13-Mar-2020
      17660 % 14-Mar-2020
      21157 % 15-Mar-2020
      23980 % 16-Mar-2020
      27980 % 17-Mar-2020
      31506 % 18-Mar-2020
      35713 % 19-Mar-2020
      41035 % 20-Mar-2020
      47021 % 21-Mar-2020
      53578 % 22-Mar-2020
      59138 % 23-Mar-2020
      63927 % 24-Mar-2020
      69176 % 25-Mar-2020
      74386 % 26-Mar-2020
      80539 % 27-Mar-2020
      86498 % 28-Mar-2020
      92472 % 29-Mar-2020
      97689 % 30-Mar-2020
     101739 % 31-Mar-2020
     105792 % 01-Apr-2020
     110574 % 02-Apr-2020
     115242 % 03-Apr-2020
     119827 % 04-Apr-2020
     124632 % 05-Apr-2020
     128948 % 06-Apr-2020
     132547 % 07-Apr-2020
     135586 % 08-Apr-2020
     139422 % 09-Apr-2020
     143626 % 10-Apr-2020
     147577 % 11-Apr-2020
     152271 % 12-Apr-2020
     156363 % 13-Apr-2020
     159516 % 14-Apr-2020
     162488 % 15-Apr-2020
     165155 % 16-Apr-2020
     168941 % 17-Apr-2020
     172434 % 18-Apr-2020
     175925 % 19-Apr-2020
     178972 % 20-Apr-2020
     181228 % 21-Apr-2020
     183957 % 22-Apr-2020
     187327 % 23-Apr-2020
     189973 % 24-Apr-2020
     192994 % 25-Apr-2020
     195351 % 26-Apr-2020
     197675 % 27-Apr-2020
     199414 % 28-Apr-2020
     201505 % 29-Apr-2020
     203591 % 30-Apr-2020
     205463 % 01-May-2020
     207428 % 02-May-2020
     209328 % 03-May-2020
     210717 % 04-May-2020
     211938 % 05-May-2020
     213013 % 06-May-2020
     214457 % 07-May-2020
     215858 % 08-May-2020
     217185 % 09-May-2020
     218268 % 10-May-2020
     219070 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('22-Feb-2020');
end
