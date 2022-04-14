function [country,C,date0] = getDataSweden()
%GETDATASWEDEN Coronavirus data for Sweden
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
%   https://en.wikipedia.org/wiki/2020_coronavirus_pandemic_in_Sweden
country = 'Sweden';
C = [
         11 % 28-Feb-2020
         14 % 29-Feb-2020
         14 % 01-Mar-2020
         19 % 02-Mar-2020
         32 % 03-Mar-2020
         61 % 04-Mar-2020
         86 % 05-Mar-2020
        146 % 06Mar-2020
        178 % 07-Mar-2020
        225 % 08-Mar-2020
        326 % 09-Mar-2020
        424 % 10-Mar-2020
        620 % 11-Mar-2020
        771 % 12-Mar-2020
        923 % 13-Mar-2020
       994 % 14-Mar-2020
       1063 % 15-Mar-2020
       1146 % 16-Mar-2020
       1266 % 17-Mar-2020
       1411 % 18-Mar-2020
       1554 % 19-Mar-2020
       1734 % 20-Mar-2020
       1868 % 21-Mar-2020
       1985 % 22-Mar-2020
       2167 % 23-Mar-2020
       2397 % 24-Mar-2020
       2711 % 25-Mar-2020
       2997 % 26-Mar-2020
       3363 % 27-Mar-2020
       3664 % 28-Mar-2020
       3945 % 29-Mar-2020
       4359 % 30-Mar-2020 %<---------------- ?????
       4834 % 31-Mar-2020 %<---------------- ?????
       5320 % 01-Apr-2020
       5875 %02-Apr-2020
       6476 % 03-Apr-2020
       6833 % 04-Apr-2020
       7174 % 05-Apr-2020
       7565 % 06-Apr-2020
       8304 % 07-Apr-2020
       8960 % 08-Apr-2020
       9605 % 09-Apr-2020
       10057 % 10-Apr-2020
       10446 % 11-Apr-2020
       10865 % 12-Apr-2020
       10948 % 13-Apr-2020
%<-------------- add new data here
]';
date0=datenum('28-Feb-2020');
end
