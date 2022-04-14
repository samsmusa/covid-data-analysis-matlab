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
    6146189 % 01-Jun-2020
    6248961 % 02-Jun-2020
    6362175 % 03-Jun-2020
    6488689 % 04-Jun-2020
    6616044 % 05-Jun-2020
    6749900 % 06-Jun-2020
    6875287 % 07-Jun-2020
    6988954 % 08-Jun-2020
    7097706 % 09-Jun-2020
    7224479 % 10-Jun-2020
    7360142 % 11-Jun-2020
    7496870 % 12-Jun-2020
    7641856 % 13-Jun-2020
    7774826 % 14-Jun-2020
    7894442 % 15-Jun-2020
    8016038 % 16-Jun-2020
    8159289 % 17-Jun-2020
    8337312 % 18-Jun-2020
    8476121 % 19-Jun-2020
    8657476 % 20-Jun-2020
    8816612 % 21-Jun-2020
    8942897 % 22-Jun-2020
    9079391 % 23-Jun-2020
    9243568 % 24-Jun-2020
    9419392 % 25-Jun-2020
    9598259 % 26-Jun-2020
    9787957 % 27-Jun-2020
    9969204 % 28-Jun-2020
   10128274 % 29-Jun-2020
   10290089 % 30-Jun-2020
   10483887 % 01-Jul-2020
   10686124 % 02-Jul-2020
   10895009 % 03-Jul-2020
   11100808 % 04-Jul-2020
   11288581 % 05-Jul-2020
   11465130 % 06-Jul-2020
   11642293 % 07-Jul-2020
   11850803 % 08-Jul-2020
   12066716 % 09-Jul-2020
   12291676 % 10-Jul-2020
   12523396 % 11-Jul-2020
   12739115 % 12-Jul-2020
   12933308 % 13-Jul-2020
   13125861 % 14-Jul-2020
   13350915 % 15-Jul-2020
   13585203 % 16-Jul-2020
   13841354 % 17-Jul-2020
   14090182 % 18-Jul-2020
   14317201 % 19-Jul-2020
   14530830 % 20-Jul-2020
   14735465 % 21-Jul-2020
   14977003 % 22-Jul-2020
   15260892 % 23-Jul-2020
   15536734 % 24-Jul-2020
   15821023 % 25-Jul-2020
   16078023 % 26-Jul-2020
   16307353 % 27-Jul-2020
   16522705 % 28-Jul-2020
   16767416 % 29-Jul-2020
   17067388 % 30-Jul-2020
   17357613 % 31-Jul-2020
   17634886 % 01-Aug-2020
   17896905 % 02-Aug-2020
   18117817 % 03-Aug-2020
   18325139 % 04-Aug-2020
   18581955 % 05-Aug-2020
   18859803 % 06-Aug-2020
   19145769 % 07-Aug-2020
   19421611 % 08-Aug-2020
   19687315 % 09-Aug-2020
   19914818 % 10-Aug-2020
   20136005 % 11-Aug-2020
   20397633 % 12-Aug-2020
   20687358 % 13-Aug-2020
   20972879 % 14-Aug-2020
   21262345 % 15-Aug-2020
   21518675 % 16-Aug-2020
   21748936 % 17-Aug-2020
   21948560 % 18-Aug-2020
   22206623 % 19-Aug-2020
   22487274 % 20-Aug-2020
   22761723 % 21-Aug-2020
   23016039 % 22-Aug-2020
   23279354 % 23-Aug-2020
   23503597 % 24-Aug-2020
   23716759 % 25-Aug-2020
   23973326 % 26-Aug-2020
   24251579 % 27-Aug-2020
   24535206 % 28-Aug-2020
   24812183 % 29-Aug-2020
   25078224 % 30-Aug-2020
   25321449 % 31-Aug-2020
   25566970 % 01-Sep-2020
   25835970 % 02-Sep-2020
   26120959 % 03-Sep-2020
   26401009 % 04-Sep-2020
   26695927 % 05-Sep-2020
   26969363 % 06-Sep-2020
   27215404 % 07-Sep-2020
   27424407 % 08-Sep-2020
   27670143 % 09-Sep-2020
   27959306 % 10-Sep-2020
   28264998 % 11-Sep-2020
   28569678 % 12-Sep-2020
   28853865 % 13-Sep-2020
   29123783 % 14-Sep-2020
   29369302 % 15-Sep-2020
   29672882 % 16-Sep-2020
   29962528 % 17-Sep-2020
   30280719 % 18-Sep-2020
   30592714 % 19-Sep-2020
   30886186 % 20-Sep-2020
   31170529 % 21-Sep-2020
   31439462 % 22-Sep-2020
   31722176 % 23-Sep-2020
   32033658 % 24-Sep-2020
   32354537 % 25-Sep-2020
   32666138 % 26-Sep-2020
   32965426 % 27-Sep-2020
   33245310 % 28-Sep-2020
   33483764 % 29-Sep-2020
   33777698 % 30-Sep-2020
   34093723 % 01-Oct-2020
   34416903 % 02-Oct-2020
   34735715 % 03-Oct-2020
   35037693 % 04-Oct-2020
   35318769 % 05-Oct-2020
   35589045 % 06-Oct-2020
   35915822 % 07-Oct-2020
   36269448 % 08-Oct-2020
   36632504 % 09-Oct-2020
   36981762 % 10-Oct-2020
   37331188 % 11-Oct-2020
   37635245 % 12-Oct-2020
   37920312 % 13-Oct-2020
   38251039 % 14-Oct-2020
   38639434 % 15-Oct-2020
   39042053 % 16-Oct-2020
   39439488 % 17-Oct-2020
   39809972 % 18-Oct-2020
   40171982 % 19-Oct-2020
   40520682 % 20-Oct-2020
   40915670 % 21-Oct-2020
   41367912 % 22-Oct-2020
   41840416 % 23-Oct-2020
   42329189 % 24-Oct-2020
   42788799 % 25-Oct-2020
   43227729 % 26-Oct-2020
   43643644 % 27-Oct-2020
   44123016 % 28-Oct-2020
   44636477 % 29-Oct-2020
   45184578 % 30-Oct-2020
   45726736 % 31-Oct-2020
   46184735 % 01-Nov-2020
   46671967 % 02-Nov-2020
   47142461 % 03-Nov-2020
   47647460 % 04-Nov-2020
   48217351 % 05-Nov-2020
   48829738 % 06-Nov-2020
   49435759 % 07-Nov-2020
   50029033 % 08-Nov-2020
   50557870 % 09-Nov-2020
   51060158 % 10-Nov-2020
   51627093 % 11-Nov-2020
   52250604 % 12-Nov-2020
   52898103 % 13-Nov-2020
   53533932 % 14-Nov-2020
   54128402 % 15-Nov-2020
   54642940 % 16-Nov-2020
   55187421 % 17-Nov-2020
   55770400 % 18-Nov-2020
   56396170 % 19-Nov-2020
   57037140 % 20-Nov-2020
   57716898 % 21-Nov-2020
   58288941 % 22-Nov-2020
   58807799 % 23-Nov-2020
   59341326 % 24-Nov-2020
   59903030 % 25-Nov-2020
   60552696 % 26-Nov-2020
   61102596 % 27-Nov-2020
   61718735 % 28-Nov-2020
   62271031 % 29-Nov-2020
%<-------------- add new data here
]';
date0=datenum('31-Dec-2019');
end