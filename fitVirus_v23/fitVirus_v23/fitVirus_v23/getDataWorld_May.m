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
      87091 % 01-Mar-2020
      89159 % 02-Mar-2020
      91017 % 03-Mar-2020
      93332 % 04-Mar-2020
      95689 % 05-Mar-2020
      98749 % 06-Mar-2020
     102869 % 07-Mar-2020
     106849 % 08-Mar-2020
     111026 % 09-Mar-2020
     115846 % 10-Mar-2020
     120963 % 11-Mar-2020
     128885 % 12-Mar-2020
     138359 % 13-Mar-2020
     148823 % 14-Mar-2020
     161014 % 15-Mar-2020
     173503 % 16-Mar-2020
     187741 % 17-Mar-2020
     204835 % 18-Mar-2020
     225124 % 19-Mar-2020
     256328 % 20-Mar-2020
     288313 % 21-Mar-2020
     322547 % 22-Mar-2020
     356817 % 23-Mar-2020
     401377 % 24-Mar-2020
     443921 % 25-Mar-2020
     497746 % 26-Mar-2020
     558855 % 27-Mar-2020
     624047 % 28-Mar-2020
     686894 % 29-Mar-2020
     744262 % 30-Mar-2020
     808984 % 31-Mar-2020
     883829 % 01-Apr-2020
     961465 % 02-Apr-2020
    1039111 % 03-Apr-2020
    1121114 % 04-Apr-2020
    1206388 % 05-Apr-2020
    1272649 % 06-Apr-2020
    1345952 % 07-Apr-2020
    1423300 % 08-Apr-2020
    1508390 % 09-Apr-2020
    1595798 % 10-Apr-2020
    1685428 % 11-Apr-2020
    1760783 % 12-Apr-2020
    1829304 % 13-Apr-2020
    1894563 % 14-Apr-2020
    1971537 % 15-Apr-2020
    2050356 % 16-Apr-2020
    2134784 % 17-Apr-2020
    2217056 % 18-Apr-2020
    2296749 % 19-Apr-2020
    2367256 % 20-Apr-2020
    2441922 % 21-Apr-2020
    2529232 % 22-Apr-2020
    2595836 % 23-Apr-2020
    2674625 % 24-Apr-2020
    2747774 % 25-Apr-2020
    2847622 % 26-Apr-2020
    2929454 % 27-Apr-2020
    2996235 % 28-Apr-2020
    3069060 % 29-Apr-2020
    3148567 % 30-Apr-2020
    3234241 % 01-May-2020
    3322771 % 02-May-2020
    3403410 % 03-May-2020
    3480427 % 04-May-2020
    3558034 % 05-May-2020
    3637592 % 06-May-2020
    3725894 % 07-May-2020
    3818711 % 08-May-2020
    3908407 % 09-May-2020
    3996830 % 10-May-2020
    4071365 % 11-May-2020
    4142732 % 12-May-2020
    4229850 % 13-May-2020
    4317352 % 14-May-2020
    4414532 % 15-May-2020
    4512768 % 16-May-2020
    4605735 % 17-May-2020
    4684784 % 18-May-2020
    4772741 % 19-May-2020
    4869123 % 20-May-2020
    4974096 % 21-May-2020
    5082867 % 22-May-2020
    5189678 % 23-May-2020
    5288624 % 24-May-2020
    5380876 % 25-May-2020
    5471826 % 26-May-2020
    5566467 % 27-May-2020
    5670283 % 28-May-2020
    5789611 % 29-May-2020
    5912799 % 30-May-2020
    6040563 % 31-May-2020
    
%<-------------- add new data here
]';
date0=datenum('31-Dec-2019');
end
