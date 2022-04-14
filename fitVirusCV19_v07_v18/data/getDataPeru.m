function [country,C,date0] = getDataPeru()
%GETDATAPERU Coronavirus data for Peru
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Peru';
C = [
          7 % 09-Mar-2020
          9 % 10-Mar-2020
         11 % 11-Mar-2020
         17 % 12-Mar-2020
         22 % 13-Mar-2020
         38 % 14-Mar-2020
         43 % 15-Mar-2020
         71 % 16-Mar-2020
         86 % 17-Mar-2020
        117 % 18-Mar-2020
        145 % 19-Mar-2020
        234 % 20-Mar-2020
        263 % 21-Mar-2020
        318 % 22-Mar-2020
        363 % 23-Mar-2020
        395 % 24-Mar-2020
        416 % 25-Mar-2020
        558 % 26-Mar-2020
        580 % 27-Mar-2020
        635 % 28-Mar-2020
        671 % 29-Mar-2020
        852 % 30-Mar-2020
        950 % 31-Mar-2020
       1065 % 01-Apr-2020
       1323 % 02-Apr-2020
       1414 % 03-Apr-2020
       1595 % 04-Apr-2020
       1746 % 05-Apr-2020
       2281 % 06-Apr-2020
       2561 % 07-Apr-2020
       2954 % 08-Apr-2020
       4342 % 09-Apr-2020
       5256 % 10-Apr-2020
       5897 % 11-Apr-2020
       6848 % 12-Apr-2020
       7519 % 13-Apr-2020
       7519 % 14-Apr-2020
      10303 % 15-Apr-2020
      11475 % 16-Apr-2020
      12491 % 17-Apr-2020
      13489 % 18-Apr-2020
      14420 % 19-Apr-2020
      15628 % 20-Apr-2020
      16325 % 21-Apr-2020
      17837 % 22-Apr-2020
      19250 % 23-Apr-2020
      20914 % 24-Apr-2020
      21648 % 25-Apr-2020
      25331 % 26-Apr-2020
      27517 % 27-Apr-2020
      28699 % 28-Apr-2020
      31190 % 29-Apr-2020
      33931 % 30-Apr-2020
      36976 % 01-May-2020
      40459 % 02-May-2020
      42534 % 03-May-2020
      45928 % 04-May-2020
      47372 % 05-May-2020
      51189 % 06-May-2020
      54817 % 07-May-2020
      58526 % 08-May-2020
      61847 % 09-May-2020
      65015 % 10-May-2020
      67307 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('09-Mar-2020');
end