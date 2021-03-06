function [country,C,date0] = getDataAustria()
%GETDATAAUSTRIA Coronavirus data for Austria
%  as reported by One World in Data
%     https://ourworldindata.org/coronavirus-source-data
country = 'Austria';
C = [
          5 % 28-Feb-2020
          7 % 29-Feb-2020
         10 % 01-Mar-2020
         14 % 02-Mar-2020
         18 % 03-Mar-2020
         24 % 04-Mar-2020
         29 % 05-Mar-2020
         41 % 06-Mar-2020
         74 % 07-Mar-2020
         99 % 08-Mar-2020
        102 % 09-Mar-2020
        131 % 10-Mar-2020
        182 % 11-Mar-2020
        246 % 12-Mar-2020
        361 % 13-Mar-2020
        504 % 14-Mar-2020
        655 % 15-Mar-2020
        860 % 16-Mar-2020
       1016 % 17-Mar-2020
       1332 % 18-Mar-2020
       1646 % 19-Mar-2020
       2196 % 20-Mar-2020
       2649 % 21-Mar-2020
       3024 % 22-Mar-2020
       3631 % 23-Mar-2020
       4486 % 24-Mar-2020
       5282 % 25-Mar-2020
       5888 % 26-Mar-2020
       7029 % 27-Mar-2020
       7697 % 28-Mar-2020
       8291 % 29-Mar-2020
       8813 % 30-Mar-2020
       9618 % 31-Mar-2020
      10182 % 01-Apr-2020
      10711 % 02-Apr-2020
      11129 % 03-Apr-2020
      11525 % 04-Apr-2020
      11766 % 05-Apr-2020
      11983 % 06-Apr-2020
      12297 % 07-Apr-2020
      12640 % 08-Apr-2020
      12969 % 09-Apr-2020
      13248 % 10-Apr-2020
      13560 % 11-Apr-2020
      13807 % 12-Apr-2020
      13937 % 13-Apr-2020
      14043 % 14-Apr-2020
      14234 % 15-Apr-2020
      14370 % 16-Apr-2020
      14448 % 17-Apr-2020
      14603 % 18-Apr-2020
      14662 % 19-Apr-2020
      14710 % 20-Apr-2020
      14783 % 21-Apr-2020
      14833 % 22-Apr-2020
      14924 % 23-Apr-2020
      14985 % 24-Apr-2020
      15068 % 25-Apr-2020
      15134 % 26-Apr-2020
      15189 % 27-Apr-2020
      15256 % 28-Apr-2020
      15314 % 29-Apr-2020
      15364 % 30-Apr-2020
      15424 % 01-May-2020
      15458 % 02-May-2020
      15470 % 03-May-2020
      15538 % 04-May-2020
      15569 % 05-May-2020
      15586 % 06-May-2020
      15651 % 07-May-2020
      15673 % 08-May-2020
      15735 % 09-May-2020
      15777 % 10-May-2020
      15787 % 11-May-2020
%<-------------- add new data here
]';
date0=datenum('28-Feb-2020');
end
