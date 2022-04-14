function [country,C,date0] = getDataPortugal()
%GETDATAPORTUGAL Coronavirus data for Portugal
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Portugal';
C = [
          5 % 05-Mar-2020
          9 % 06-Mar-2020
         13 % 07-Mar-2020
         21 % 08-Mar-2020
         30 % 09-Mar-2020
         39 % 10-Mar-2020
         41 % 11-Mar-2020
         59 % 12-Mar-2020
         78 % 13-Mar-2020
        112 % 14-Mar-2020
        169 % 15-Mar-2020
        245 % 16-Mar-2020
        331 % 17-Mar-2020
        448 % 18-Mar-2020
        642 % 19-Mar-2020
        785 % 20-Mar-2020
       1020 % 21-Mar-2020
       1280 % 22-Mar-2020
       1600 % 23-Mar-2020
       2060 % 24-Mar-2020
       2362 % 25-Mar-2020
       2995 % 26-Mar-2020
       3544 % 27-Mar-2020
       4268 % 28-Mar-2020
       5170 % 29-Mar-2020
       5962 % 30-Mar-2020
       6408 % 31-Mar-2020
       7443 % 01-Apr-2020
       8251 % 02-Apr-2020
       9034 % 03-Apr-2020
       9886 % 04-Apr-2020
      10524 % 05-Apr-2020
      11278 % 06-Apr-2020
      11730 % 07-Apr-2020
      12442 % 08-Apr-2020
      13141 % 09-Apr-2020
      13956 % 10-Apr-2020
      15472 % 11-Apr-2020
      15987 % 12-Apr-2020
      16585 % 13-Apr-2020
      16934 % 14-Apr-2020
      17448 % 15-Apr-2020
      18091 % 16-Apr-2020
      18841 % 17-Apr-2020
      19022 % 18-Apr-2020
      19685 % 19-Apr-2020
      20206 % 20-Apr-2020
      20863 % 21-Apr-2020
      21379 % 22-Apr-2020
      21982 % 23-Apr-2020
      22353 % 24-Apr-2020
      23271 % 25-Apr-2020
      23683 % 26-Apr-2020
      23846 % 27-Apr-2020
      24144 % 28-Apr-2020
      24324 % 29-Apr-2020
      24692 % 30-Apr-2020
      24987 % 01-May-2020
      25351 % 02-May-2020
      25190 % 03-May-2020
      25524 % 04-May-2020
      25524 % 05-May-2020
      25702 % 06-May-2020
      26182 % 07-May-2020
      26715 % 08-May-2020
      27268 % 09-May-2020
      27406 % 10-May-2020
      27581 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('05-Mar-2020');
end
