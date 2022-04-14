function [country,C,date0] = getDataUSA()
%GETDATA Coronavirus data
%   https://www.worldometers.info/coronavirus/country/us/
country = 'USA';
date0=datenum('2020/02/25'); % start date
C = [
%15 ; %'2020/03/01'
%15
%15
%15
%15
%15
%35
%35
%35
%53
75
100
124
158
221
319
435
541
704
994
1301
1697
2247
2943
3680
4663
6411
9259
13789
%<-------------- add new data here
]';
end

