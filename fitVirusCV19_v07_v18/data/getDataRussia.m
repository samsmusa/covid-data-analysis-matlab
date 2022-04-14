function [country,C,date0] = getDataRussia()
%GETDATARUSSIA Coronavirus data for Russia
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Russia';
C = [
         10 % 07-Mar-2020
         10 % 08-Mar-2020
         10 % 09-Mar-2020
         10 % 10-Mar-2020
         10 % 11-Mar-2020
         25 % 12-Mar-2020
         30 % 13-Mar-2020
         45 % 14-Mar-2020
         59 % 15-Mar-2020
         63 % 16-Mar-2020
         93 % 17-Mar-2020
        114 % 18-Mar-2020
        147 % 19-Mar-2020
        199 % 20-Mar-2020
        253 % 21-Mar-2020
        306 % 22-Mar-2020
        438 % 23-Mar-2020
        438 % 24-Mar-2020
        495 % 25-Mar-2020
        658 % 26-Mar-2020
        840 % 27-Mar-2020
       1036 % 28-Mar-2020
       1264 % 29-Mar-2020
       1534 % 30-Mar-2020
       1836 % 31-Mar-2020
       2337 % 01-Apr-2020
       2777 % 02-Apr-2020
       3548 % 03-Apr-2020
       4149 % 04-Apr-2020
       4731 % 05-Apr-2020
       5389 % 06-Apr-2020
       6343 % 07-Apr-2020
       7497 % 08-Apr-2020
       8672 % 09-Apr-2020
      10131 % 10-Apr-2020
      11917 % 11-Apr-2020
      13584 % 12-Apr-2020
      15770 % 13-Apr-2020
      18328 % 14-Apr-2020
      21102 % 15-Apr-2020
      24490 % 16-Apr-2020
      27938 % 17-Apr-2020
      32008 % 18-Apr-2020
      36793 % 19-Apr-2020
      42853 % 20-Apr-2020
      47121 % 21-Apr-2020
      52763 % 22-Apr-2020
      57999 % 23-Apr-2020
      62773 % 24-Apr-2020
      68622 % 25-Apr-2020
      74588 % 26-Apr-2020
      80949 % 27-Apr-2020
      87147 % 28-Apr-2020
      93558 % 29-Apr-2020
      99399 % 30-Apr-2020
     106498 % 01-May-2020
     114431 % 02-May-2020
     124054 % 03-May-2020
     134687 % 04-May-2020
     145268 % 05-May-2020
     155370 % 06-May-2020
     165929 % 07-May-2020
     177160 % 08-May-2020
     187859 % 09-May-2020
     198676 % 10-May-2020
     209688 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('07-Mar-2020');
end