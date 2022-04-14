function [country, C,date0] = getDataLombardia()
%GETDATA Coronavirus data
%  https://lab.gedidigital.it/gedi-visual/2020/coronavirus-i-contagi-in-italia/?refresh_ce
country = 'Lombardia';
date0=datenum('2020/02/25'); % start date

C = [
    231
    249
    349
    474
    552
    887
    1077
    1326
    1497
    1777
    2008
    2749
    3372
    4490
    4427
    5763
    6896
    7732
    9059
    10043
    10861
    12095
    12266
    13938
    15420
    17370
    17885
%<-------------- add new data here
]';
end

