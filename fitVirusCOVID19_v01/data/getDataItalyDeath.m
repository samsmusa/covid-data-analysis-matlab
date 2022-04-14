function [country, C,date0] = getDataItalyDeath()
%GETDATA Coronavirus data
%  https://en.wikipedia.org/wiki/2020_coronavirus_outbreak_in_Italy
country = 'Italy (Total Deaths)';
date0=datenum('2020/03/02'); % start date

C = [
    52
    79
    107
    148
    197
    233
    366
    463
    631
    827
    1016
    1266
    1441
    1809
    2158
    2503
    2978
    3405
%<-------------- add new data here
]';
end

