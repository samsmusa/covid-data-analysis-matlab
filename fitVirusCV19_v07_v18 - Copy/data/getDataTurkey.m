function [country,C,date0] = getDataTurkey()
%GETDATATURKEY Coronavirus data for Turkey
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Turkey';
C = [
         18 % 16-Mar-2020
         47 % 17-Mar-2020
         98 % 18-Mar-2020
        191 % 19-Mar-2020
        359 % 20-Mar-2020
        670 % 21-Mar-2020
        947 % 22-Mar-2020
       1236 % 23-Mar-2020
       1529 % 24-Mar-2020
       1872 % 25-Mar-2020
       2433 % 26-Mar-2020
       3629 % 27-Mar-2020
       5698 % 28-Mar-2020
       7402 % 29-Mar-2020
       9217 % 30-Mar-2020
      10827 % 31-Mar-2020
      13531 % 01-Apr-2020
      15679 % 02-Apr-2020
      18135 % 03-Apr-2020
      20921 % 04-Apr-2020
      23934 % 05-Apr-2020
      27069 % 06-Apr-2020
      30217 % 07-Apr-2020
      34109 % 08-Apr-2020
      38226 % 09-Apr-2020
      42282 % 10-Apr-2020
      47029 % 11-Apr-2020
      52167 % 12-Apr-2020
      56956 % 13-Apr-2020
      61049 % 14-Apr-2020
      65111 % 15-Apr-2020
      69392 % 16-Apr-2020
      74193 % 17-Apr-2020
      78546 % 18-Apr-2020
      82329 % 19-Apr-2020
      86306 % 20-Apr-2020
      90980 % 21-Apr-2020
      95591 % 22-Apr-2020
      98674 % 23-Apr-2020
     101790 % 24-Apr-2020
     104912 % 25-Apr-2020
     107773 % 26-Apr-2020
     110130 % 27-Apr-2020
     112261 % 28-Apr-2020
     114653 % 29-Apr-2020
     117589 % 30-Apr-2020
     120204 % 01-May-2020
     122392 % 02-May-2020
     124375 % 03-May-2020
     126045 % 04-May-2020
     127659 % 05-May-2020
     129491 % 06-May-2020
     131744 % 07-May-2020
     133721 % 08-May-2020
     135569 % 09-May-2020
     137115 % 10-May-2020
     138657 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('16-Mar-2020');
end
