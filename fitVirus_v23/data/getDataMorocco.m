function [country,C,date0] = getDataMorocco()
%GETDATA Coronavirus data
%   https://en.wikipedia.org/wiki/2020_coronavirus_pandemic_in_Morocco
country = 'Morocco';
date0=datenum('2020/03/12'); % start date
C = [
          6 % 12-Mar-2020
          8 % 13-Mar-2020
          18 % 14-Mar-2020
         28 % 15-Mar-2020
         37 % 16-Mar-2020
         44 % 17-Mar-2020
         54 % 18-Mar-2020
         63 % 19-Mar-2020
         79 % 20-Mar-2020
         96 % 21-Mar-2020
         115 % 22-Mar-2020
        143 % 23-Mar-2020
        170 % 24-Mar-2020
        225 % 25-Mar-2020
        275 % 26-Mar-2020
        345 % 27-Mar-2020
        402 % 28-Mar-2020
        479 % 29-Mar-2020
        556 % 30-Mar-2020
        617 % 31-Mar-2020
        654 % 01-Apr-2020
        708 % 02-Apr-2020
        791 % 03-Apr-2020
        919 % 04-Apr-2020
        1021 % 05-Apr-2020
        1120 % 06-Apr-2020
        1184 % 07-Apr-2020
        1275 % 08-Apr-2020
        1374 % 09-Apr-2020
        1448 % 10-Apr-2020
        1545 % 11-Apr-2020
%<-------------- add new data here
]';
end