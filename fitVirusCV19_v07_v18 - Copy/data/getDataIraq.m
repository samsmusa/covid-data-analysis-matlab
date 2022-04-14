function [country,C,date0] = getDataIraq()
%GETDATAIRAQ Coronavirus data for Iraq
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Iraq';
C = [
          5 % 26-Feb-2020
          5 % 27-Feb-2020
          6 % 28-Feb-2020
          7 % 29-Feb-2020
         13 % 01-Mar-2020
         19 % 02-Mar-2020
         21 % 03-Mar-2020
         26 % 04-Mar-2020
         31 % 05-Mar-2020
         38 % 06-Mar-2020
        NaN % 07-Mar-2020
         54 % 08-Mar-2020
         61 % 09-Mar-2020
        NaN % 10-Mar-2020
         61 % 11-Mar-2020
         70 % 12-Mar-2020
         74 % 13-Mar-2020
         85 % 14-Mar-2020
         85 % 15-Mar-2020
        124 % 16-Mar-2020
        124 % 17-Mar-2020
        154 % 18-Mar-2020
        164 % 19-Mar-2020
        177 % 20-Mar-2020
        193 % 21-Mar-2020
        214 % 22-Mar-2020
        233 % 23-Mar-2020
        266 % 24-Mar-2020
        316 % 25-Mar-2020
        346 % 26-Mar-2020
        382 % 27-Mar-2020
        458 % 28-Mar-2020
        506 % 29-Mar-2020
        547 % 30-Mar-2020
        630 % 31-Mar-2020
        694 % 01-Apr-2020
        694 % 02-Apr-2020
        772 % 03-Apr-2020
        772 % 04-Apr-2020
        878 % 05-Apr-2020
        961 % 06-Apr-2020
       1031 % 07-Apr-2020
       1031 % 08-Apr-2020
       1202 % 09-Apr-2020
       1232 % 10-Apr-2020
       1279 % 11-Apr-2020
       1318 % 12-Apr-2020
       1352 % 13-Apr-2020
       1378 % 14-Apr-2020
       1400 % 15-Apr-2020
       1415 % 16-Apr-2020
       1434 % 17-Apr-2020
       1482 % 18-Apr-2020
       1482 % 19-Apr-2020
       1539 % 20-Apr-2020
       1574 % 21-Apr-2020
       1602 % 22-Apr-2020
       1602 % 23-Apr-2020
       1677 % 24-Apr-2020
       1708 % 25-Apr-2020
       1763 % 26-Apr-2020
       1820 % 27-Apr-2020
       1847 % 28-Apr-2020
       1847 % 29-Apr-2020
       2003 % 30-Apr-2020
       2085 % 01-May-2020
       2153 % 02-May-2020
       2219 % 03-May-2020
       2296 % 04-May-2020
       2346 % 05-May-2020
       2431 % 06-May-2020
       2480 % 07-May-2020
       2543 % 08-May-2020
       2603 % 09-May-2020
       2679 % 10-May-2020
       2767 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('26-Feb-2020');
end