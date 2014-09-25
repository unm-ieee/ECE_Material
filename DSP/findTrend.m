function [trendLine] = findTrend(timeValues, data, train)
% [trendLine] = findTrend(timeValues, data, train)
%
% Title  :      Deterend data
%
% Description : 
% 
% Reference :  (1) MATLAB polyfit tool
%
% Input Parameters :  
%   timeValues  Time in elapsed seconds from start of sensor data collection 
%   data        Data values used for detrending
%   train       Training period (or no sensor movement) (in number of samples)
%
% Output Parameters : enhanced signal  
%   X_reconstructed  Data after reconstruction
%   XL               Data after initial low pass filtering
%             
% Author :      E Hamke, 2012
% ----------------------------------------------------------------------
   trendLine = zeros(length(data)-1, 1);

   % Evaluate initial A matrix terms
   tSum  = sum(timeValues(1:train));
   t2Sum = sum(timeValues(1:train).^2);
   t3Sum = sum(timeValues(1:train).^3);
   t4Sum = sum(timeValues(1:train).^4);
 
   % Evaluate initial b vector terms
   dSum   = sum(data(1:train));
   dtSum  = sum(data(1:train).*timeValues(1:train));
   dt2Sum = sum(data(1:train).*timeValues(1:train).^2);

   % Form A matrix and b vector
   A = [train tSum t2Sum; tSum t2Sum t3Sum; t2Sum t3Sum t4Sum];
   b = [dSum; dtSum; dt2Sum];
 
   % Solve for quadratic coefficients
   p = solveCoefficients(A,b);
   
   for i = 1:train
      % Find trend line for intial values
      trendLine(i) = p*[timeValues(i)^2; timeValues(i); 1];
   end
   
   % Determine maximum difference
   dMax = trendLine(train) - trendLine(train-1);
 
   for i = 1:(length(data)-train)
     
       % Update A matrix terms
       tSum  = tSum  + timeValues(train+i)    - timeValues(1+i);
       t2Sum = t2Sum + timeValues(train+i).^2 - timeValues(1+i).^2;
       t3Sum = t3Sum + timeValues(train+i).^3 - timeValues(1+i).^3;
       t4Sum = t4Sum + timeValues(train+i).^4 - timeValues(1+i).^4;

       % Update b vector terms
       dSum   = dSum   + data(train+i) - data(1+i);
       dtSum  = dtSum  + data(train+i).*timeValues(train+i)    - data(1+i).*timeValues(1+i);
       dt2Sum = dt2Sum + data(train+i).*timeValues(train+i).^2 - data(1+i).*timeValues(1+i).^2;

       % Form current A matrix and b vector
       A = [train tSum t2Sum; tSum t2Sum t3Sum; t2Sum t3Sum t4Sum];
       b = [dSum; dtSum; dt2Sum];
       
       % Solve for quadratic coefficients
       p = solveCoefficients(A,b);

       % Find current trendline point
       trendLine(train+i) = p*[timeValues(train+i).^2; timeValues(train+i); 1];
       
       d1 = trendLine(train+i)-trendLine(train+i-1);
       if abs(d1) > 30*abs(dMax)
           % trendLine(train+i) = 30*abs(dMax) + trendLine(train+i-1);
       end
   end
 
function p = solveCoefficients(A, b)
%  Solve for coefficients using methodology found in polyfit
%  ---------------------------------------------------------

     % find the upper triangular matrix
    if issparse(A)
        R = qr(A);
    else
        R = triu(qr(A));
    end
    x = R\(R'\(A'*b));
    r = b - A*x;
    e = R\(R'\(A'*r));
    x = x + e;  

    p = [x(3) x(2) x(1)];