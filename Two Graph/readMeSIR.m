%README

%Forecasting of coronavirus COVID19 epidemic (SIR model)
%=======================================================
%It is assumed that the model is a reasonable description of the 
%one-stage epidemic. In particular, the model assumes a constant
%population, uniform mixing of the people, and equally likely recovery 
%of infected. The model is data-driven, so its forecast is as good as data
%are. The forecasting change with new or changed data.

%fitVirusCV19 need fminsearc function from Optimization Toolbox or
%Statistical Toolbox

%fitVirusCV19 also need lambertw function. The program test if Symbolic
%Math Toolbox is instaled. In this case it use lambertw from the toolbox
%otherwise it emulate its behaviot by solving the equation x=y*exp(y). The
%flambertw function seek soolution in the interval [-1e6,1e6].

%Usage example:
%==============

%fitVirusCV19(@getDataAustria)

%to print report use 'prn' option (def 'off')
%fitVirusCV19(@getDataAustria,'prn','on')

%to export graphs to jpg picture use 'jpg' option (def 'off')
%fitVirusCV19(@getDataAustria,'jpg','on')

%to control jpeg resolution use '-r100','-r300','-r600',... as follows
%(def '-r150')
%fitVirusCV19(@getDataAustria,'jpg','on','jpres','-r300')

%to decrease/increase initial susceptible population size limit (default 12e6)
%fitVirusCV19(@getDataAustria,'nmax',1e4)

%to exclude growth rate from graph use 'nsp' (number of subplots) option
%fitVirusCV19(@getDataAustria,'nsp',2)

%to use 'keeptick' option on x-axis use 'tick' option (def 'keeplimits')
%fitVirusCV19(@getDataAustria,'tick','keepticks')

%to plot all the data use use 'data' option (def 'off')
%fitVirusCV19(@getDataAustria,'data','on')

%Data generation
%====================
% To generate getData function with daily data run importTotalCases function
% which automaticaly generate data files (created by Igor Podlubny)

%for those using  MATLAB R2015a run importTotalCasesR15

%Analyise 
%=========

% analyseCV19 will plot evaluation of R0 (basic rep. number) , R (rep. number), 
%Clim (epidemic size), N (population size), and model parameters beta
%and gamma

% calcR0 will calc average basic reproduction number over 10 days.

%Usage:
%-----

%analyseCV19(@getDataAustria) % from 14 days back 

%analyseCV19(@getDataAustria,10)  % from 10 days back

%calcR0(@getDataAustria) % default 5 days average
%calcR0(@getDataAustria,10) % set 10 days average

%*********NEW********* 12.May.2020
% The function fitVirusCV19 assume that daily reported data are new infected
% cases. If we assume that daily reported data are new removed cases
% then the following function should be used

%fitVirusCV19R(@getDataAustria)

%The function has the same options as fitVirusCV19.

%Source of data
%==============
%https://ourworldindata.org/coronavirus-source-data.
%https://www.worldometers.info/coronavirus/coronavirus-cases/#case-tot-outchina
%https://en.wikipedia.org/wiki/2019%E2%80%9320_coronavirus_pandemic_by_country_and_territory

%An actual source of data is for each country reported in the corresponding
%getData function.


%Folders
%=========
%CV19: contain fitVirusCV19, fitVirusCV19R and analyseCV19 functions

%data:  getData functions generated by importTotalCases for various
%countries generated from https://covid.ourworldindata.org/data/ecdc/total_cases.csv

%PLA: utility program created by Patrick Anderson

%report: there live scripts: one for all countries in data folder, one full
%report for selected country and one for data anylsing.

%DISCLAIMER: Software and data is for education and not for medical or 
%commercial use. The model may fail in some situations. In particular, the
%model may be unadequate, the model may fail in the initial phase and in 
%when additional epidemic stages or outbreaks  (not described by SIR model)
%are encountered. Use it at your own discretion.
%The data are only for demonstrating the operation of fitVirusCV19. FitVirus
%and presented demo data are only for educational and academic purposes and
%should not be used for medical purposes and in commerce. They are provided
%as is and any express or implied warranties, including but not limited to 
%implied warranties of merchantability and fitness for a particular purpose
%are disclaimed.
