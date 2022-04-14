function [country,C,date0] = getDataNetherlands()
%GETDATA Coronavirus data
%   data from RIVM Netherlands, as reported on https://en.wikipedia.org/wiki/2020_coronavirus_pandemic_in_the_Netherlands
country = 'Netherlands';
date0=datenum('2020/02/28'); % start date
C = [
1
2
6
19
24
38
82
128
188
264
321
382
503
614
804
959
1135
1413
1705
2051
2460
2994
3631
%<-------------- add new data here
]';
end

