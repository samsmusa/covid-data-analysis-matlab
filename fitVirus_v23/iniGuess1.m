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

    nmax = max(1,fix(0.5*n));

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

        % this is initial guess
        b0 = [K r A]';
        break

    end
end

