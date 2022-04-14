function res = fitVirusCOVID19(getData,prn)
%FITVIRUSCOVID19 SIR model for simulation of evaluation of coronavirus
%epidemy.
%
% Optional output:
%   res -- structure with results

    global C dC
    global c1 c2    % optimization weights
    
    c1 = 1;  % value
    c2 = 1;  % derivative

    if nargin < 2
        prn = false;
    end
    
    % get data
    [country,C,date0] = getData();

    %Y = diff(X) calculates differences between adjacent elements of X along the first array dimension whose size does not equal 1:

    % If X is a vector of length m, then Y = diff(X) returns a vector of %length m-1. The elements of Y are the differences between adjacent %elements of X.

    %Y = [X(2)-X(1) X(3)-X(2) ... X(m)-X(m-1)]
    dC  = diff(C);
    tt  = 0:length(C)-1;  
    ttt = 0:length(dC)-1;

    % initial guess
    b0 = iniGuess(C);
    if isempty(b0)
        fprintf('Fail to obtain initial approximation for %s.\n', country)
        if nargout > 0
            res = [];
        end
        return
    end

    % ... logistic curve parameters
    K0 = b0(1);
    r = b0(2);
    A = b0(3);
    C0 = K0/(A + 1);

    % ... initial guess
    I0 = C0;
    N = 2*K0;
    gamma = r*2;
    beta = 1.5*gamma;

    % main calculation =======================================================%

    % calculate parameters
    b0 = [beta gamma N I0]';
    b = parest(b0);
    
    if any(b < 0) || b(3) > 2e6
        fprintf('Fail to obtain parameters. Use initial values.\n')
        fprintf('%g %g %g %g\n',b0)
%         if nargout > 0
%             res = [];
%         end
%         return
        b = b0;
    end
    % unpack results
    beta  = b(1);
    gamma = b(2);
    N     = b(3);
    I0    = b(4);
    
    % postprocessing ======================================================== %

    %... final value
    Clim = calcClim(b);

    %... inflection time value
    Cm   = calcCm(b);

    % basic reproduction number
    R0 = beta/gamma*(1 - I0/N);

    %... parameters of logistic model approximation
    r = beta - gamma;
    K = 2*(beta - gamma)/(2*beta - gamma)*N;

    %... tangent slope in inflection point
    k = (N - Cm)*(beta*Cm/N + gamma*log((N - Cm)/(N - I0)));

    %... acceleration
    tau1  = Cm/k;

    %... deceartion
    tau2  = (Clim - Cm)/k;

    %... total duration
    tau = tau1 + tau2;

    %... inflection time
    tm = calcTm(b,Cm);

    %... datums
    tp1 = (tm - tau1) + date0;
    tp2 = (tm) + date0;
    tp3 = (tm + tau2) + date0;
    tp4 = (tm + tau2) + tau + date0;

    %... dense forcast curve
    dt = 0.1;
    tspan = 0:dt:2.5*tm;
    warning('on')
    [t,Ca] = ode45(@(t,y) odeFun(t,y,b), tspan, I0);
    warning('off')
    Ca = real(Ca);
    
    %... calculate forcasting curve at data points
    tspan = 0:length(C)-1;
    warning('on')
    [~,Ce] = ode45(@(t,y) odeFun(t,y,b), tspan, I0);
    warning('off')
    Ce = real(Ce);

    %... calculate statistics
    [R2,AdjR2] = calcR2(C',Ce(1:length(C)));
    if R2 < 0.9
        fprintf('***Warning: R2 = %g\n',R2)
    end
    
    % save results =======================================================%
    if nargout > 0
        res.country = country;
        res.day   = length(C);        
        res.C = C;
        res.Ce = round(Ce',0);
        res.dif = round(C - Ce',0);
        res.R0    = R0;
        res.beta  = beta;
        res.gamma = gamma;
        res.N     = N;
        res.I0    = I0;
        res.Cm    = Cm;
        res.Clim  = Clim;
        res.tm    = tm;
        res.tau1  = tau1;
        res.tau2  = tau2;
        res.tau   = tau;
        res.tp0   = datestr(date0);
        res.tp1   = datestr(floor(tp1));
        res.tp2   = datestr(fix(tp2));
        res.tp3   = datestr(ceil(tp3));
        res.tp4   = datestr(ceil(tp4));
        res.K     = K;
        res.r     = r;
        res.A     = K/I0 - 1;
        res.R2    = R2;
        res.AdjR2 = AdjR2;
    end

    % print results ======================================================%

    if prn 
        fprintf('day   %g\n',length(dC)-1);
        fprintf('R0    %g\n',R0);
        fprintf('beta  %g\n',beta)
        fprintf('gamma %g\n',gamma)
        fprintf('N     %g\n',N)
        fprintf('I0    %g\n',I0)
        fprintf('Cm    %g\n',Cm)
        fprintf('Clim  %g\n',Clim)
        fprintf('r     %g\n',r)
        fprintf('K     %g\n',K);
        fprintf('k     %g\n',k);
        fprintf('tm     %g\n',tm);
        fprintf('tau1  %g\n',tau1)
        fprintf('tau2  %g\n',tau2);
        fprintf('tau   %g\n',tau);
        fprintf('tp1   %s\n',datestr(tp1));
        fprintf('tp2   %s\n',datestr(tp2));
        fprintf('tp3   %s\n',datestr(tp3));
        fprintf('tp4   %s\n',datestr(tp4));
        fprintf('R2     %g\n',R2);
        fprintf('AdjR2  %g\n',AdjR2);
    end

    % plot results ===========================================================%

    figure
    set(gcf,'Position',[100 100 800 600])

    %...set scale
    if max(Ca) > 1000
        sf = 1000;
    else
        sf = 1;
    end

    % plot total cases ---------------------
    subplot(2,1,1)
    hold on

    %... plot forcast curve
    plot(t + date0,Ca/sf,'LineWidth',2)

    %...get plot limits
    ylm = get(gca,'Ylim');  % get y-axes limits
    xlm = get(gca,'Xlim');  % get x-axes limits
    www = xlm(2);
    hhh = ylm(2);

    %... plot cases limits
    h = plot([0,t(end)] + date0,[Clim,Clim]/sf,'b','LineWidth',1);
    h.Annotation.LegendInformation.IconDisplayStyle = 'off';

    %... turning line
    h = plot([tm+date0,tm+date0],[0,hhh],'r','LineWidth',1);
    h.Annotation.LegendInformation.IconDisplayStyle = 'off';

    %... red regin
    h = fill([tp1,tp3,tp3,tp1],[0 0 hhh hhh],'r',...
        'FaceAlpha',0.15,'EdgeColor','none');
    h.Annotation.LegendInformation.IconDisplayStyle = 'off';

    %... yellow region
    h = fill([tp3,tp4,tp4,tp3],[0 0 hhh hhh],'y',...
        'FaceAlpha',0.15,'EdgeColor','none');
    h.Annotation.LegendInformation.IconDisplayStyle = 'off';

    %... green region
    h = fill([tp4,www,www,tp4],[0 0 hhh hhh],'g',...
        'FaceAlpha',0.15,'EdgeColor','none');
    h.Annotation.LegendInformation.IconDisplayStyle = 'off';

    %... add data points
    scatter(tt + date0, C/sf,50,'k','filled')
    h = scatter(tt + date0, C/sf,30,'w','filled');
    h.Annotation.LegendInformation.IconDisplayStyle = 'off';

    %... what kind of thicks?
%    datetick('x',20)
%      if tm < 10
         datetick('x',20,'keepticks')
%      else
%          datetick('x',20,'keeplimits')
%      end

    %... label axes
    xlabel('date')
    if sf == 1000
        ylabel('Infected (x1000 cases)')
    else
        ylabel('Infected (cases)')
    end

    %... add legend
    legend('Prediction','Actual','Location','best')

    %... add title
    tx1 = sprintf('Coronavirus epidemic in %s (SIR model)',country);
    tx2 = sprintf('%s %g  %s %g  %s %g  %s %g  %s %g  %s %g',...
        'R_0 = ',round(R0,3),...
        '\beta = ',round(b(1),3),...
        '\gamma = ',round(b(2),3),...
        'N = ',round(b(3),0),...
        'C_{end} = ',round(Clim,0),...
        'S_{end} = ',round(N - Clim,0));
    title({tx1,tx2},'FontWeight','normal')

    %... add grid
    grid on

    % plot infection rate -------------
    subplot(2,1,2)
    hold on

    %... plot data
    bar(date0+ttt,dC)

    %... plot forcasting curve
    plot(date0+t(1:end-1),diff(Ca)/dt,'LineWidth',2)

    %... what kind of thicks?
    datetick('x',20)

    %... add title
    title('Infection rate','FontWeight','normal')

    % ... add labels
    ylabel('Infection rate (cases/day)')
    xlabel('Date')

    %... add legend
    legend('Actual','Prediction','Location','best')

    %... add grid
    grid on

    hold off

end

function b = parest(b0)
%PAREST Parameter estimation
    warning('on')
    options = optimset('Display','off'); %,'MaxIter',maxiter,...
    %  'MaxFunEvals',maxfun);
    [b, fmin,flag] = fminsearch(@fun, b0, options);
    warning('off')
%     fprintf('Exit condition: %g\n',flag)
%     fprintf('Smallest value of the error: %g\n',fmin);
end
    
function f = fun( par)
%FUN Optimization function
    global C dC
    global c1 c2
    
    % upack parameter
	I0 = par(4);
    
    % set time span
    tspan = 0:length(C)-1;  
    
    % solve ODE
    try
        warning('off')
        [tsol,Csol] = ode45(@(t,y) odeFun(t,y,par), tspan, I0);
        warning('on')
    catch
        f = NaN;
        warning('on')
        return
    end
    
    % check if calculation time equals sample time
    if length(tsol) ~= length(tspan)
        f = NaN;
        return
    end
    
    % calculated number of cases
    f = c2*norm((dC' - diff(Csol))) + c1*norm((C' - Csol));
    
end

function res = calcClim(par)
%CALCCLIM Calculate number of recoverd individuals after t=inf
    beta  = par(1);
    gamma = par(2);
    N     = par(3);
    I0    = par(4);
    res = calcEndPoint(beta,gamma,I0/N)*N;    
end

function res = calcCm(par)
%CALCCM Calculate number of cases at inflection point
    beta  = par(1);
    gamma = par(2);
    N     = par(3);
    I0    = par(4);
    res = calcInflectionPoint(beta,gamma,I0/N)*N;   
end

function res = calcTm(par,Cm)
%CALCTM Calculate peak time
    beta  = par(1);
    gamma = par(2);
    N     = par(3);
    c0    = par(4)/N;
    warning('off')
    res = integral(@fun,c0,Cm/N);
    warning('on')
    function t = fun(c)
        tt = (1 - c).*(beta*c + gamma*log((1 - c)/(1 - c0)));
        t = 1./tt;
    end
end

function ce = calcEndPoint(beta,gamma,c0)
%CALCENDPOINT Calculate end density 
    ce = 1 + gamma/beta*...
        lambertw(-beta*(1 - c0)*exp(-beta/gamma)/gamma);
end

function cm = calcInflectionPoint(beta,gamma,c0)
%CALCINFLECTIONPOINT Calculate inflection point for density curve
    cm = 1 + (gamma/2/beta)*...
        lambertw(-1, -2*beta*(1 - c0)*exp(-(1 + beta/gamma))/gamma);
end

function [R2, AdjR2] = calcR2(y,ye)
%CALCR2 Calculate the coefficient of determination
%
% Input:
%   y  -- actual values
%   ye -- estimated values
%
% Output:
%   R2 -- the coefficient of determination
%   AdjR2 -- adjusted R2
%
% References:
%   https://en.wikipedia.org/wiki/Coefficient_of_determination
%
    zbar  = sum(y)/length(y);
    SStot = sum((y - zbar).^2);
    SSres = sum((y - ye).^2);
    R2    = 1 - SSres/SStot;
    
    % calculate adjusted R2
    if nargout > 1
        n = length(y);  % number of data points
        p = 4;          % number of explanatory terms in a model
        AdjR2 = 1 - (1 - R2)*(n - 1)/(n - p - 1);        
    end
    
end

function [b0] = iniGuess(C)
%INIGUESS Initial guess for logistic regression
% calculate initial K, r, A using data from three equidistant points 
%
% Input:
%   C -- data
%
% Output:
%   b0 -- initial guess = [K r A]' or [] if calculation fails

    b0 = [];
    n = length(C);
    
    % calculate time interval for equidistant points: k-2*m, k-m, k
    if mod(n,2) == 0
        k1 = 1;
        k3  = n-1;
    else
        k1 = 1;
        k3 = n;
    end
    k2 = (k1 + k3)/2;
    m = k2 - k1 -1;

    % calculate K, r, A ...
    
    %.. calculate K
    q = C(k2)^2 - C(k3)*C(k1);
    if q <= 0
        warning('q = %g',q)
        return
    end
    p = C(k1)*C(k2) - 2*C(k1)*C(k3) + C(k2)*C(k3);
    if p <= 0
        warning('p = %g',p)
        return
    end
    K = C(k2)*p/q;
    
    % ... calculate r
    r = log(C(k3)*(C(k2) - C(k1))/C(k1)/(C(k3) - C(k2)))/m;
    if r < 0
        warning('r = %g',r)
        return
    end
    
    %... calculate A
    A = (C(k3) - C(k2))*(C(k2) - C(k1))/q*...
        (C(k3)*(C(k2) - C(k1))/C(k1)/(C(k3) - C(k2)))^((k3-m)/m);
    if A <= 0
        warning('A = %g',r)
        return
    end

    % this is initial guess
    b0 = [K r A]';

end

function dCdt = odeFun(t,C,par)
%ODEFUN SIR model

    % unpack parameters
    beta  = par(1);
    gamma = par(2);
    N     = par(3);
    I0    = par(4);
    
    % set temp. vars
    c0    = I0/N;
    c     = C/N;

    % setup equation
    dCdt = N*(1 - c)*(beta*c + gamma*log((1 - c)/(1 - c0)));
    
end

