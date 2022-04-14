function [b,C,time0] = initialGuess(C,time0)
%INIGUESS Initial guess for logistic regression
%
%   C = K/(1 + A*exp(-r*t)), A= K/I0 - 1
%
% Input/Output:
%   C       -- data
%   time0   -- start serial time
%
% Output:
%   b -- initial guess = [K r I0]' or [] if calculation fails
%

    %minimal check
    narginchk(2,3)
    nargoutchk(0,3)
    
    % check data
    validateattributes( C,     {'numeric'},{'real','vector','nonnegative'});
    validateattributes( time0, {'numeric'},{'real','scalar','positive'});   
    
    % initialize
    b = [];
    nmin = 5; % minimal number of data    
    if length(C) < nmin
        return
    end
    
    % clean front
    n0 = 0;
    for n = 1:length(C)
        if ~isnan(C(n)) && C(n) ~= 0
            time0 = time0 + n - 1;
            n0 = n;
            break
        end
    end
   if n0 == 0       
        fprintf('Invalid data.\n')
        return
   end
   if n0 > 1
       C = C(n0:end);
   end
    
    % find start
    n0 = 1;
    for n = 2:length(C)
        if C(n-1) > C(n)
            fprint('Invalid data C(%d)>C(%d).',n-1,n)            
            return
        end
        if C(n) == C(n-1)
            n0 = n;
            time0 = time0 + 1;
            continue
        end
        break
    end
    if n0 == length(C)
        fprintf('Constant data set.');
        return
    end
    
    % delete inital constant data
    if n0 > 1
        C = C(n0:end);
    end
    
    % check
    if length(C) <= nmin
        fprintf('Data set too small.\n');
        return
    end    
    
    % find initial guess
    while true
        b = iniGuess0(C);
        if isempty(b)
            if length(C) > nmin
                time0 = time0 + 1;
                C = C(2:end);
                continue
            else
                break
            end
        end
        break
    end
    
    if ~isempty(b)
        b(3) = b(1)/(b(3) + 1);%simplify(A)simplify(A)
    end
    
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function b = iniGuess0(C)
%INIGUESS0 Initial guess for logistic regression
%
%   C = K/(1 + A*exp(-r*t))
%
% Calculate initial K, r, A using data from three equidistant points 
%
% Input:
%   C -- data
%
% Output:
%   b -- initial guess = [K r A]' or [] if calculation fails

%A := (C2-Cm)*(C1-Cm)*(-(C1-Cm)*C2/(C1*(C2-Cm)))^(t1/m)/(C1*C2-Cm^2)
%r := ln(-(C1-Cm)*C2/(C1*(C2-Cm)))/m
%K := Cm*(2*C1*C2-C1*Cm-C2*Cm)/(C1*C2-Cm^2)

    b = [];
    n = length(C);
    
    if n < 3
        fprintf('***Warning: not enough input data.\n')
        return
    end
    
    mid = [];
    for i = 1:fix(n/2)
        if isnan(C(i)) || isnan(C(end-i+1))
            continue
        end
        mid = (C(i) + C(end-i+1))/2;
        break
    end
    if isempty(mid)
        return
    end
    t1 = [];
    for i = 1:n
        if isnan(C(i))
            continue
        end
        if C(i) > mid
            t1 = i;
            break
        end
    end
    if isempty(t1)
        return
    end

    Cm = C(t1);
    mm = t1 - 1;     
    
    for m = mm:-1:1

        if t1 - m < 1 || t1 + m > n
            continue
        end
        
        C1 = C(t1 - m);
        C2 = C(t1 + m);
        % fprintf('%d %d %g %g %g\n',t1,m,C1,Cm,C2)
                
        if isnan(C1) || isnan(C2)
            continue
        end

        % calculate K, r, A ...
       
        q = (C1*C2 - Cm^2);
        if q == 0
            continue
        end
        p = (Cm - C1)*C2/(C1*(C2 - Cm));
        if p <= 0
            continue
        end
        
        A = (C2 - Cm)*(C1 - Cm)*(p)^((t1-1)/m)/q;
      %  A = (C2-Cm)*(C1-Cm)*(-(C1-Cm)*C2/(C1*(C2-Cm)))^(t1/m)/(C1*C2-Cm^2);
        r = log(p)/m;
        if r < 0 || A < 0
            continue
        end
        
        K = Cm*(2*C1*C2 - C1*Cm - C2*Cm)/q;
        if K <= 0
            continue
        end
       % fprintf('%d %g %g %g \n',m,K,r,A); %K/(A+1))
        
        % ... check
        if isnan(A) || isnan(r) || isnan(K) || ...
                isinf(A) || isinf(r) || isinf(K)
            continue
        end

        % this is initial guess
        b = [K r A]';
        break

    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function b = xiniGuess0(C)
%INIGUESS0 Initial guess for logistic regression
%
%   C = K/(1 + A*exp(-r*t))
%
% Calculate initial K, r, A using data from three equidistant points 
%
% Input:
%   C -- data
%
% Output:
%   b -- initial guess = [K r A]' or [] if calculation fails

%A := (C2-Cm)*(C1-Cm)*(-(C1-Cm)*C2/(C1*(C2-Cm)))^(t1/m)/(C1*C2-Cm^2)
%r := ln(-(C1-Cm)*C2/(C1*(C2-Cm)))/m
%K := Cm*(2*C1*C2-C1*Cm-C2*Cm)/(C1*C2-Cm^2)

    b = [];
    n = length(C);
    
    if n <= 5
        fprintf('***Warning: not enough input data.\n')
        return
    end

    nmax = n - 5;
    
    for i = 1:nmax

        % calculate time interval for equidistant points: k-2*m, k-m, k
        if mod(n-i+1,2) == 0
            k1 = i;
            k3  = n-1;
        else
            k1 = i;
            k3 = n;
        end
        k2 = (k1 + k3)/2;
        m = k2 - k1 -1;

        if k1 <1 || k2 < 1 || k3 < 1 || m < 1
            break
        end
        
        if isnan(C(k1)) || isnan(C(k2)) || isnan(C(k3))
            continue
        end

        % calculate K, r, A ...

        %.. calculate K
        q = C(k2)^2 - C(k3)*C(k1);
        if q <= 0
            %      fprintf('***Warning: iniGuess q = %g  k1 = %d k2= %d k3 = %d \n',...
            %          q, k1, k2, k3)
            continue
        end
        p = C(k1)*C(k2) - 2*C(k1)*C(k3) + C(k2)*C(k3);
        if p <= 0
            %   fprintf('***Warning: iniGuess p = %g\n',p)
            continue
        end
        K = C(k2)*p/q;

        % ... calculate r
        r = log(C(k3)*(C(k2) - C(k1))/C(k1)/(C(k3) - C(k2)))/m;
        if r < 0 
            %  fprintf('***Warning: iniGuess r = %g\n',r)
            continue
        end

        %... calculate A
        A = (C(k3) - C(k2))*(C(k2) - C(k1))/q*...
            (C(k3)*(C(k2) - C(k1))/C(k1)/(C(k3) - C(k2)))^((k3-m)/m);
        if A <= 0
            %   fprintf('***Warning: iniGuess A = %g\n',r)
            continue
        end
        
        % ... check
        if isnan(A) || isnan(r) || isnan(K) || ...
                isinf(A) || isinf(r) || isinf(K)
            continue
        end

        % this is initial guess
        b = [K r A]';
        break

    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%EOF
