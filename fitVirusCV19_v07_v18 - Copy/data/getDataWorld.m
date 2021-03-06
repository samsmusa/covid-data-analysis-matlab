function [country,C,date0] = getDataWorld()
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
         60 % 14-Jan-2020
         61 % 15-Jan-2020
         61 % 16-Jan-2020
         66 % 17-Jan-2020
         83 % 18-Jan-2020
        219 % 19-Jan-2020
        239 % 20-Jan-2020
        392 % 21-Jan-2020
        534 % 22-Jan-2020
        631 % 23-Jan-2020
        897 % 24-Jan-2020
       1350 % 25-Jan-2020
       2023 % 26-Jan-2020
       2820 % 27-Jan-2020
       4587 % 28-Jan-2020
       6067 % 29-Jan-2020
       7823 % 30-Jan-2020
       9826 % 31-Jan-2020
      11946 % 01-Feb-2020
      14554 % 02-Feb-2020
      17372 % 03-Feb-2020
      20615 % 04-Feb-2020
      24522 % 05-Feb-2020
      28273 % 06-Feb-2020
      31491 % 07-Feb-2020
      34933 % 08-Feb-2020
      37552 % 09-Feb-2020
      40540 % 10-Feb-2020
      43105 % 11-Feb-2020
      45177 % 12-Feb-2020
      60328 % 13-Feb-2020
      64543 % 14-Feb-2020
      67103 % 15-Feb-2020
      69265 % 16-Feb-2020
      71332 % 17-Feb-2020
      73327 % 18-Feb-2020
      75191 % 19-Feb-2020
      75723 % 20-Feb-2020
      76719 % 21-Feb-2020
      77804 % 22-Feb-2020
      78812 % 23-Feb-2020
      79339 % 24-Feb-2020
      80132 % 25-Feb-2020
      80995 % 26-Feb-2020
      82101 % 27-Feb-2020
      83365 % 28-Feb-2020
      85203 % 29-Feb-2020
      87026 % 01-Mar-2020
      89068 % 02-Mar-2020
      90865 % 03-Mar-2020
      93077 % 04-Mar-2020
      95316 % 05-Mar-2020
      98172 % 06-Mar-2020
     102133 % 07-Mar-2020
     105824 % 08-Mar-2020
     109695 % 09-Mar-2020
     114235 % 10-Mar-2020
     118613 % 11-Mar-2020
     125497 % 12-Mar-2020
     133853 % 13-Mar-2020
     143259 % 14-Mar-2020
     154774 % 15-Mar-2020
     167418 % 16-Mar-2020
     180094 % 17-Mar-2020
     194843 % 18-Mar-2020
     213149 % 19-Mar-2020
     242374 % 20-Mar-2020
     271116 % 21-Mar-2020
     305235 % 22-Mar-2020
     338235 % 23-Mar-2020
     377968 % 24-Mar-2020
     416881 % 25-Mar-2020
     468092 % 26-Mar-2020
     527839 % 27-Mar-2020
     591796 % 28-Mar-2020
     656834 % 29-Mar-2020
     715377 % 30-Mar-2020
     777187 % 31-Mar-2020
     851587 % 01-Apr-2020
     928491 % 02-Apr-2020
    1006063 % 03-Apr-2020
    1087822 % 04-Apr-2020
    1174306 % 05-Apr-2020
    1245601 % 06-Apr-2020
    1316988 % 07-Apr-2020
    1391881 % 08-Apr-2020
    1476792 % 09-Apr-2020
    1563819 % 10-Apr-2020
    1653160 % 11-Apr-2020
    1734868 % 12-Apr-2020
    1807256 % 13-Apr-2020
    1873639 % 14-Apr-2020
    1953786 % 15-Apr-2020
    2033745 % 16-Apr-2020
    2117297 % 17-Apr-2020
    2199460 % 18-Apr-2020
    2278484 % 19-Apr-2020
    2350993 % 20-Apr-2020
    2427353 % 21-Apr-2020
    2513399 % 22-Apr-2020
    2579823 % 23-Apr-2020
    2657910 % 24-Apr-2020
    2731217 % 25-Apr-2020
    2832750 % 26-Apr-2020
    2915977 % 27-Apr-2020
    2981542 % 28-Apr-2020
    3054404 % 29-Apr-2020
    3131487 % 30-Apr-2020
    3216467 % 01-May-2020
    3308341 % 02-May-2020
    3389459 % 03-May-2020
    3468047 % 04-May-2020
    3545486 % 05-May-2020
    3624789 % 06-May-2020
    3714816 % 07-May-2020
    3809262 % 08-May-2020
    3899379 % 09-May-2020
    3986931 % 10-May-2020
    4063525 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('31-Dec-2019');
end
