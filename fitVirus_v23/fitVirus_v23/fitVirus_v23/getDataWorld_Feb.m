function [country,C,date0] = getDataWorld_Jan()
%GETDATAWORLD Coronavirus data for World
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'World';
C = [
         27 % 31-Dec-2019
         27 % 01-Jan-2020
         27 % 02-Jan-2020
         44 % 03-Jan-2020
         44 % 04-Jan-2020
         59 % 05-Jan-2020
         59 % 06-Jan-2020
         59 % 07-Jan-2020
         59 % 08-Jan-2020
         59 % 09-Jan-2020
         59 % 10-Jan-2020
         59 % 11-Jan-2020
         59 % 12-Jan-2020
         60 % 13-Jan-2020
         61 % 14-Jan-2020
         62 % 15-Jan-2020
         62 % 16-Jan-2020
         67 % 17-Jan-2020
         84 % 18-Jan-2020
        220 % 19-Jan-2020
        240 % 20-Jan-2020
        393 % 21-Jan-2020
        535 % 22-Jan-2020
        632 % 23-Jan-2020
        898 % 24-Jan-2020
       1351 % 25-Jan-2020
       2024 % 26-Jan-2020
       2821 % 27-Jan-2020
       4588 % 28-Jan-2020
       6068 % 29-Jan-2020
       7825 % 30-Jan-2020
       9826 % 31-Jan-2020
       11947 % 01-Feb-2020
      14555 % 02-Feb-2020
      17373 % 03-Feb-2020
      20616 % 04-Feb-2020
      24525 % 05-Feb-2020
      28276 % 06-Feb-2020
      31494 % 07-Feb-2020
      34936 % 08-Feb-2020
      37554 % 09-Feb-2020
      40546 % 10-Feb-2020
      43109 % 11-Feb-2020
      45181 % 12-Feb-2020
      60332 % 13-Feb-2020
      64547 % 14-Feb-2020
      67107 % 15-Feb-2020
      69269 % 16-Feb-2020
      71336 % 17-Feb-2020
      73331 % 18-Feb-2020
      75195 % 19-Feb-2020
      75727 % 20-Feb-2020
      76723 % 21-Feb-2020
      77808 % 22-Feb-2020
      78818 % 23-Feb-2020
      79341 % 24-Feb-2020
      80136 % 25-Feb-2020
      81003 % 26-Feb-2020
      82117 % 27-Feb-2020
      83388 % 28-Feb-2020
      85248 % 29-Feb-2020
      
%<-------------- add new data here
]';
date0=datenum('31-Dec-2019');
end
