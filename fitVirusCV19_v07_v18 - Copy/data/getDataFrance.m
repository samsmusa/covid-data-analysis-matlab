function [country,C,date0] = getDataFrance()
%GETDATAFRANCE Coronavirus data for France
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'France';
C = [
          5 % 30-Jan-2020
          6 % 31-Jan-2020
          6 % 01-Feb-2020
          6 % 02-Feb-2020
          6 % 03-Feb-2020
          6 % 04-Feb-2020
          6 % 05-Feb-2020
          6 % 06-Feb-2020
          6 % 07-Feb-2020
         11 % 08-Feb-2020
         11 % 09-Feb-2020
         11 % 10-Feb-2020
         11 % 11-Feb-2020
         11 % 12-Feb-2020
         11 % 13-Feb-2020
         11 % 14-Feb-2020
         11 % 15-Feb-2020
         11 % 16-Feb-2020
         12 % 17-Feb-2020
         12 % 18-Feb-2020
         12 % 19-Feb-2020
         12 % 20-Feb-2020
         12 % 21-Feb-2020
         12 % 22-Feb-2020
         12 % 23-Feb-2020
         12 % 24-Feb-2020
         12 % 25-Feb-2020
         14 % 26-Feb-2020
         17 % 27-Feb-2020
         38 % 28-Feb-2020
         57 % 29-Feb-2020
        100 % 01-Mar-2020
        130 % 02-Mar-2020
        178 % 03-Mar-2020
        212 % 04-Mar-2020
        285 % 05-Mar-2020
        423 % 06-Mar-2020
        613 % 07-Mar-2020
        716 % 08-Mar-2020
       1126 % 09-Mar-2020
       1412 % 10-Mar-2020
       1784 % 11-Mar-2020
       2281 % 12-Mar-2020
       2876 % 13-Mar-2020
       3661 % 14-Mar-2020
       4499 % 15-Mar-2020
       5423 % 16-Mar-2020
       6633 % 17-Mar-2020
       7730 % 18-Mar-2020
       9134 % 19-Mar-2020
      10995 % 20-Mar-2020
      12612 % 21-Mar-2020
      14459 % 22-Mar-2020
      16018 % 23-Mar-2020
      19856 % 24-Mar-2020
      22302 % 25-Mar-2020
      25233 % 26-Mar-2020
      29155 % 27-Mar-2020
      32964 % 28-Mar-2020
      37575 % 29-Mar-2020
      40174 % 30-Mar-2020
      44550 % 31-Mar-2020
      52128 % 01-Apr-2020
      56989 % 02-Apr-2020
      59105 % 03-Apr-2020
      64338 % 04-Apr-2020
      68605 % 05-Apr-2020
      70478 % 06-Apr-2020
      74390 % 07-Apr-2020
      78167 % 08-Apr-2020
      82048 % 09-Apr-2020
      86334 % 10-Apr-2020
      90676 % 11-Apr-2020
      93790 % 12-Apr-2020
      95403 % 13-Apr-2020
      98076 % 14-Apr-2020
     103573 % 15-Apr-2020
     106206 % 16-Apr-2020
     108847 % 17-Apr-2020
     109252 % 18-Apr-2020
     111821 % 19-Apr-2020
     112606 % 20-Apr-2020
     114657 % 21-Apr-2020
     117324 % 22-Apr-2020
     119151 % 23-Apr-2020
     120804 % 24-Apr-2020
     122577 % 25-Apr-2020
     124114 % 26-Apr-2020
     124575 % 27-Apr-2020
     125770 % 28-Apr-2020
     126835 % 29-Apr-2020
     128442 % 30-Apr-2020
     129581 % 01-May-2020
     130185 % 02-May-2020
     130979 % 03-May-2020
     131287 % 04-May-2020
     131863 % 05-May-2020
     132967 % 06-May-2020
     137150 % 07-May-2020
     137779 % 08-May-2020
     138421 % 09-May-2020
     138854 % 10-May-2020
     139063 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('30-Jan-2020');
end