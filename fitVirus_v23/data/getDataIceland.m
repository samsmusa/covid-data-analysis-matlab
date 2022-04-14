function [country,C,date0] = getDataIceland()
%GETDATAICELAND Coronavirus data for Iceland
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Iceland';
C = [
          6 % 03-Mar-2020
         16 % 04-Mar-2020
         26 % 05-Mar-2020
         35 % 06-Mar-2020
         43 % 07-Mar-2020
         53 % 08-Mar-2020
         55 % 09-Mar-2020
         65 % 10-Mar-2020
         70 % 11-Mar-2020
         85 % 12-Mar-2020
        117 % 13-Mar-2020
        117 % 14-Mar-2020
        138 % 15-Mar-2020
        178 % 16-Mar-2020
        199 % 17-Mar-2020
        247 % 18-Mar-2020
        250 % 19-Mar-2020
        330 % 20-Mar-2020
        409 % 21-Mar-2020
        473 % 22-Mar-2020
        568 % 23-Mar-2020
        588 % 24-Mar-2020
        648 % 25-Mar-2020
        737 % 26-Mar-2020
        802 % 27-Mar-2020
        890 % 28-Mar-2020
        963 % 29-Mar-2020
        1020 % 30-Mar-2020
        1086 % 31-Mar-2020
        1135 % 01-Apr-2020
        1220 % 01-Apr-2020
        1319 % 02-Apr-2020
        1364 % 03-Apr-2020
        1417 % 04-Apr-2020
        1486 % 05-Apr-2020
        1562 % 06-Apr-2020
        1586 % 07-Apr-2020
        1616 % 08-Apr-2020
        1648 % 09-Apr-2020
        1689 % 10-Apr-2020
         1701        % 11-Apr-2020
         1711        % 12-Apr-2020
%<-------------- add new data here
]';
date0=datenum('03/03/2020');
end
