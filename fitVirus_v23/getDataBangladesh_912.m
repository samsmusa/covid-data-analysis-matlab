function [country,C,date0] = getDataBangladesh_912()
%GETDATABANGLADESH Coronavirus data for Bangladesh
%  as reported by worldometers.info
%     https://www.worldometers.info/coronavirus/
country = 'Bangladesh';
C = [
          0 % 15-Feb-2020
          0 % 16-Feb-2020
          0 % 17-Feb-2020
          0 % 18-Feb-2020
          0 % 19-Feb-2020
          0 % 20-Feb-2020
          0 % 21-Feb-2020
          0 % 22-Feb-2020
          0 % 23-Feb-2020
          0 % 24-Feb-2020
          0 % 25-Feb-2020
          0 % 26-Feb-2020
          0 % 27-Feb-2020
          0 % 28-Feb-2020
          0 % 29-Feb-2020
          0 % 01-Mar-2020
          0 % 02-Mar-2020
          0 % 03-Mar-2020
          0 % 04-Mar-2020
          0 % 05-Mar-2020
          0 % 06-Mar-2020
          0 % 07-Mar-2020
          3 % 08-Mar-2020
          3 % 09-Mar-2020
          3 % 10-Mar-2020
          3 % 11-Mar-2020
          3 % 12-Mar-2020
          3 % 13-Mar-2020
          5 % 14-Mar-2020
          5 % 15-Mar-2020
          8 % 16-Mar-2020
         10 % 17-Mar-2020
         14 % 18-Mar-2020
         18 % 19-Mar-2020
         20 % 20-Mar-2020
         24 % 21-Mar-2020
         27 % 22-Mar-2020
         33 % 23-Mar-2020
         39 % 24-Mar-2020
         39 % 25-Mar-2020
         44 % 26-Mar-2020
         48 % 27-Mar-2020
         48 % 28-Mar-2020
         48 % 29-Mar-2020
         49 % 30-Mar-2020
         51 % 31-Mar-2020
         54 % 01-Apr-2020
         56 % 02-Apr-2020
         61 % 03-Apr-2020
         70 % 04-Apr-2020
         88 % 05-Apr-2020
        123 % 06-Apr-2020
        164 % 07-Apr-2020
        218 % 08-Apr-2020
        330 % 09-Apr-2020
        424 % 10-Apr-2020
        482 % 11-Apr-2020
        621 % 12-Apr-2020
        803 % 13-Apr-2020
       1012 % 14-Apr-2020
       1231 % 15-Apr-2020
       1572 % 16-Apr-2020
       1838 % 17-Apr-2020
       2144 % 18-Apr-2020
       2456 % 19-Apr-2020
       2948 % 20-Apr-2020
       3382 % 21-Apr-2020
       3772 % 22-Apr-2020
       4186 % 23-Apr-2020
       4689 % 24-Apr-2020
       4998 % 25-Apr-2020
       5416 % 26-Apr-2020
       5913 % 27-Apr-2020
       6462 % 28-Apr-2020
       7103 % 29-Apr-2020
       7667 % 30-Apr-2020
       8238 % 01-May-2020
       8790 % 02-May-2020
       9455 % 03-May-2020
      10143 % 04-May-2020
      10929 % 05-May-2020
      11719 % 06-May-2020
      12425 % 07-May-2020
      13134 % 08-May-2020
      13770 % 09-May-2020
      14657 % 10-May-2020
      15691 % 11-May-2020
      16660 % 12-May-2020
      17822 % 13-May-2020
      18863 % 14-May-2020
      20065 % 15-May-2020
      20995 % 16-May-2020
      22268 % 17-May-2020
      23870 % 18-May-2020
      25121 % 19-May-2020
      26738 % 20-May-2020
      28511 % 21-May-2020
      30205 % 22-May-2020
      32078 % 23-May-2020
      33610 % 24-May-2020
      35585 % 25-May-2020
      36751 % 26-May-2020
      38292 % 27-May-2020
      40321 % 28-May-2020
      42844 % 29-May-2020
      44608 % 30-May-2020
      47153 % 31-May-2020
      49534 % 01-Jun-2020
      52445 % 02-Jun-2020
      55140 % 03-Jun-2020
      57563 % 04-Jun-2020
      60391 % 05-Jun-2020
      63026 % 06-Jun-2020
      65769 % 07-Jun-2020
      68504 % 08-Jun-2020
      71675 % 09-Jun-2020
      74865 % 10-Jun-2020
      78052 % 11-Jun-2020
      81523 % 12-Jun-2020
      84379 % 13-Jun-2020
      87520 % 14-Jun-2020
      90619 % 15-Jun-2020
      94481 % 16-Jun-2020
      98489 % 17-Jun-2020
     102292 % 18-Jun-2020
     105535 % 19-Jun-2020
     108775 % 20-Jun-2020
     112306 % 21-Jun-2020
     115786 % 22-Jun-2020
     119198 % 23-Jun-2020
     122660 % 24-Jun-2020
     126606 % 25-Jun-2020
     130474 % 26-Jun-2020
     133978 % 27-Jun-2020
     137787 % 28-Jun-2020
     141801 % 29-Jun-2020
     145483 % 30-Jun-2020
     149258 % 01-Jul-2020
     153277 % 02-Jul-2020
     156391 % 03-Jul-2020
     159679 % 04-Jul-2020
     162417 % 05-Jul-2020
     165618 % 06-Jul-2020
     168645 % 07-Jul-2020
     172134 % 08-Jul-2020
     175494 % 09-Jul-2020
     178443 % 10-Jul-2020
     181129 % 11-Jul-2020
     183795 % 12-Jul-2020
     186894 % 13-Jul-2020
     190057 % 14-Jul-2020
     193590 % 15-Jul-2020
     196323 % 16-Jul-2020
     199357 % 17-Jul-2020
     202066 % 18-Jul-2020
     204525 % 19-Jul-2020
     207453 % 20-Jul-2020
     210510 % 21-Jul-2020
     213254 % 22-Jul-2020
     216110 % 23-Jul-2020
     218658 % 24-Jul-2020
     221178 % 25-Jul-2020
     223453 % 26-Jul-2020
     226225 % 27-Jul-2020
     229185 % 28-Jul-2020
     232194 % 29-Jul-2020
     234889 % 30-Jul-2020
     237661 % 31-Jul-2020
     239860 % 01-Aug-2020
     240746 % 02-Aug-2020
     242102 % 03-Aug-2020
     244020 % 04-Aug-2020
     246674 % 05-Aug-2020
     249651 % 06-Aug-2020
     252502 % 07-Aug-2020
     255113 % 08-Aug-2020
     257600 % 09-Aug-2020
     260507 % 10-Aug-2020
     263503 % 11-Aug-2020
     266498 % 12-Aug-2020
     269115 % 13-Aug-2020
     271881 % 14-Aug-2020
     274525 % 15-Aug-2020
     276549 % 16-Aug-2020
     279144 % 17-Aug-2020
     282344 % 18-Aug-2020
     285091 % 19-Aug-2020
     287959 % 20-Aug-2020
     290360 % 21-Aug-2020
     292625 % 22-Aug-2020
     294598 % 23-Aug-2020
     297083 % 24-Aug-2020
     299628 % 25-Aug-2020
     302147 % 26-Aug-2020
     304583 % 27-Aug-2020
     306794 % 28-Aug-2020
     308925 % 29-Aug-2020
     310822 % 30-Aug-2020
     312996 % 31-Aug-2020
     314946 % 01-Sep-2020
     317528 % 02-Sep-2020
     319686 % 03-Sep-2020
     321615 % 04-Sep-2020
     323565 % 05-Sep-2020
     325157 % 06-Sep-2020
     327359 % 07-Sep-2020
     329251 % 08-Sep-2020
     331078 % 09-Sep-2020
     332970 % 10-Sep-2020
     334762 % 11-Sep-2020
     336044 % 12-Sep-2020
     337520 % 13-Sep-2020
     339332 % 14-Sep-2020
     341056 % 15-Sep-2020
     342671 % 16-Sep-2020
     344264 % 17-Sep-2020
     345805 % 18-Sep-2020
     347374 % 19-Sep-2020
     348916 % 20-Sep-2020
     350621 % 21-Sep-2020
     352178 % 22-Sep-2020
     353844 % 23-Sep-2020
     355384 % 24-Sep-2020
     356767 % 25-Sep-2020
     357873 % 26-Sep-2020
     359148 % 27-Sep-2020
     360555 % 28-Sep-2020
     362043 % 29-Sep-2020
     363479 % 30-Sep-2020
     364987 % 01-Oct-2020
     366383 % 02-Oct-2020
     367565 % 03-Oct-2020
     368690 % 04-Oct-2020
     370132 % 05-Oct-2020
     371631 % 06-Oct-2020
     373151 % 07-Oct-2020
     374592 % 08-Oct-2020
     375870 % 09-Oct-2020
     377073 % 10-Oct-2020
     378266 % 11-Oct-2020
     379738 % 12-Oct-2020
     381275 % 13-Oct-2020
     382959 % 14-Oct-2020
     384559 % 15-Oct-2020
     386086 % 16-Oct-2020
     387295 % 17-Oct-2020
     388569 % 18-Oct-2020
     390206 % 19-Oct-2020
     391586 % 20-Oct-2020
     393131 % 21-Oct-2020
     394827 % 22-Oct-2020
     396413 % 23-Oct-2020
     397507 % 24-Oct-2020
     398815 % 25-Oct-2020
     400251 % 26-Oct-2020
     401586 % 27-Oct-2020
     403079 % 28-Oct-2020
     404760 % 29-Oct-2020
     406364 % 30-Oct-2020
     407684 % 31-Oct-2020
     409252 % 01-Nov-2020
     410988 % 02-Nov-2020
     412647 % 03-Nov-2020
     414164 % 04-Nov-2020
     416006 % 05-Nov-2020
     417475 % 06-Nov-2020
     418764 % 07-Nov-2020
     420238 % 08-Nov-2020
     421921 % 09-Nov-2020
     423620 % 10-Nov-2020
     425353 % 11-Nov-2020
     427198 % 12-Nov-2020
     428965 % 13-Nov-2020
     430496 % 14-Nov-2020
     432333 % 15-Nov-2020
     434472 % 16-Nov-2020
     436684 % 17-Nov-2020
     438795 % 18-Nov-2020
     441159 % 19-Nov-2020
     443434 % 20-Nov-2020
     445281 % 21-Nov-2020
     447341 % 22-Nov-2020
     449760 % 23-Nov-2020
     451990 % 24-Nov-2020
     454146 % 25-Nov-2020
     456438 % 26-Nov-2020
     458711 % 27-Nov-2020
     460619 % 28-Nov-2020
     462407 % 29-Nov-2020
     464932 % 30-Nov-2020
     467225 % 01-Dec-2020
     469403 % 02-Dec-2020
     471739 % 03-Dec-2020
     473901 % 04-Dec-2020
     475879 % 05-Dec-2020
     477545 % 06-Dec-2020
     479743 % 07-Dec-2020
     481945 % 08-Dec-2020
     484104 % 09-Dec-2020
     485965 % 10-Dec-2020
     487849 % 11-Dec-2020
     489178 % 12-Dec-2020
     490533 % 13-Dec-2020
     492332 % 14-Dec-2020
     494209 % 15-Dec-2020
     495838 % 16-Dec-2020
     496975 % 17-Dec-2020
     498293 % 18-Dec-2020
     499560 % 19-Dec-2020
     500713 % 20-Dec-2020
     502183 % 21-Dec-2020
     503501 % 22-Dec-2020
     504868 % 23-Dec-2020
     506102 % 24-Dec-2020
     507265 % 25-Dec-2020
     508099 % 26-Dec-2020
     509148 % 27-Dec-2020
     510080 % 28-Dec-2020
     511261 % 29-Dec-2020
     512496 % 30-Dec-2020
     513510 % 31-Dec-2020
     
%<-------------- add new data here
]';
date0=datenum('15-Feb-2020');
end
