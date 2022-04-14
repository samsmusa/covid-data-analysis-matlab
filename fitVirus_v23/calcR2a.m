function [R2, AdjR2, RMSE, Fval,pval] = calcR2a(y,ye)
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

    n = length(y);  % number of data points
    p = 4;          % number of explanatory terms in a model
        
    ybar  = sum(y)/n;
    SStot = sum((y - ybar).^2);
    SSres = sum((y - ye).^2);    % 
    R2    = 1 - SSres/SStot;
    
    % calculate adjusted R2
    if nargout > 1
        AdjR2 = 1 - (1 - R2)*(n - 1)/(n - p - 1);        
    end
    
    if nargout > 2
        % http://facweb.cs.depaul.edu/sjost/csc423/documents/f-test-reg.htm
        SSM =  sum((ye - ybar).^2); % sum of squares for regression
        SSE = SSres;                % sum of squares for residuals
        SST = SStot;                % sample variance x (n-1)
        dfm = p - 1;            % Corrected Degrees of Freedom for Model
        dfe = n - p;            %Degrees of Freedom for Error
        dft = n - 1;            %Corrected Degrees of Freedom Total
        MSM = SSM/dfm;          % Mean of Squares for Model
        MSE = SSE/dfe;          % Mean of Squares for Error (variance of the residuals)
        %MST = SST/DFT;         % Mean of Squares Total (sample variance)
        RMSE = sqrt(MSE); %sqrt(SStot/(n - p));  % standard error of estimate      
        % calculate F statistics
        Fval = MSM/MSE;
        pval = fcdf(1/max(0,Fval),dfe,dfm); %????
    end
    
end


