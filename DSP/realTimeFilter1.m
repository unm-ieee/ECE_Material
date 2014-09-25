function realTimeFilter()
fid = fopen('gyroXdata_12_15_12_4.csv');

downSampleInterval = 4;
trainDepth = 4000;

dataReconstructed = [];
trendLineCum = [];
time = [];
gyroX = [];
rawData = [];

% Pass data through a lowpass filter
[num,den] = butter(20,0.314,'low');

i = 1;

rawDataText = fgetl(fid);

while ischar(rawDataText)
    
    rawDataRecord = sscanf(rawDataText,'%f, %f')';
    
    rawData(i,:) = rawDataRecord;
  
    if i <= trainDepth
        time(i)  = rawDataRecord(1);
        gyroX(i) = rawDataRecord(2);
    else
        time(1:end-1) = time(2:end);
        gyroX(1:end-1) = gyroX(2:end);
        time(trainDepth) = rawDataRecord(1);
        gyroX(trainDepth) = rawDataRecord(2);

        XL = filtfilt(num,den,gyroX);
    
        % Save every 4th data point
        X_downSampled = XL(1:downSampleInterval:end);

        % Preallocate and initialize up sampled data
        X_upsampled = zeros(1,length(XL));

        % copy data into following empty data elements
        sizeD = length(X_downSampled);

        for j = 1:downSampleInterval
            % initialize number of elements to be copied
            indicies = sizeD;

            % Check to see if all values need to be copied
            if length(j:downSampleInterval:length(XL)) ~=  sizeD
               indicies = indicies-1;
            end

            % Copy values into the upsampled vector
            X_upsampled(j:downSampleInterval:length(XL)) = X_downSampled(1:indicies);
        end

        X_reconstructed = X_upsampled;
        
        if isempty(dataReconstructed)
            dataReconstructed = X_reconstructed;
        else
            dataReconstructed = [dataReconstructed X_reconstructed(end)];
        end

       data = gyroX(end-trainDepth+1:end);
       timeValues = time(end-trainDepth+1:end);
       trendLine = zeros(length(data)-1, 1);

%        if i == trainDepth+1
%            % Evaluate initial A matrix terms
%            tSum  = sum(timeValues(1:trainDepth));
%            t2Sum = sum(timeValues(1:trainDepth).^2);
%            t3Sum = sum(timeValues(1:trainDepth).^3);
%            t4Sum = sum(timeValues(1:trainDepth).^4);
%            t5Sum = sum(timeValues(1:trainDepth).^5);
%            t6Sum = sum(timeValues(1:trainDepth).^6);
% 
%            % Evaluate initial b vector terms
%            dSum   = sum(data(1:trainDepth));
%            dtSum  = sum(data(1:trainDepth).*timeValues(1:trainDepth));
%            dt2Sum = sum(data(1:trainDepth).*timeValues(1:trainDepth).^2);
%            dt3Sum = sum(data(1:trainDepth).*timeValues(1:trainDepth).^3);
% 
%            % Form A matrix and b vector
%            A = [trainDepth   tSum t2Sum t3Sum; 
%                        tSum t2Sum t3Sum t4Sum; 
%                       t2Sum t3Sum t4Sum t5Sum; 
%                       t3Sum t4Sum t5Sum t6Sum];
%                   
%            b = [dSum; dtSum; dt2Sum; dt3Sum];
%            
%            tSum  = tSum  - timeValues(1);
%            t2Sum = t2Sum - timeValues(1).^2;
%            t3Sum = t3Sum - timeValues(1).^3;
%            t4Sum = t4Sum - timeValues(1).^4;
%            t5Sum = t5Sum - timeValues(1).^5;
%            t6Sum = t6Sum - timeValues(1).^6;
% 
%            dSum   = dSum   - data(1);
%            dtSum  = dtSum  - data(1).*timeValues(1);
%            dt2Sum = dt2Sum - data(1).*timeValues(1).^2;           
%            dt3Sum = dt3Sum - data(1).*timeValues(1).^3;  
%                   
%        else
%            % Update A matrix terms
%            tSum  = tSum  + timeValues(trainDepth);
%            t2Sum = t2Sum + timeValues(trainDepth).^2;
%            t3Sum = t3Sum + timeValues(trainDepth).^3;
%            t4Sum = t4Sum + timeValues(trainDepth).^4;
%            t5Sum = t5Sum + timeValues(trainDepth).^5;
%            t6Sum = t6Sum + timeValues(trainDepth).^6;
% 
%            % Update b vector terms
%            dSum   = dSum   + data(trainDepth);
%            dtSum  = dtSum  + data(trainDepth).*timeValues(trainDepth);
%            dt2Sum = dt2Sum + data(trainDepth).*timeValues(trainDepth).^2;
%            dt3Sum = dt3Sum + data(trainDepth).*timeValues(trainDepth).^3;
%            
%            % Form current A matrix and b vector
%            A = [trainDepth   tSum t2Sum t3Sum; 
%                        tSum t2Sum t3Sum t4Sum; 
%                       t2Sum t3Sum t4Sum t5Sum; 
%                       t3Sum t4Sum t5Sum t6Sum];
%                   
%            b = [dSum; dtSum; dt2Sum; dt3Sum];
%            
%            tSum  = tSum  - timeValues(1);
%            t2Sum = t2Sum - timeValues(1).^2;
%            t3Sum = t3Sum - timeValues(1).^3;
%            t4Sum = t4Sum - timeValues(1).^4;
%            t5Sum = t5Sum - timeValues(1).^5;
%            t6Sum = t6Sum - timeValues(1).^6;
% 
%            dSum   = dSum   - data(1);
%            dtSum  = dtSum  - data(1).*timeValues(1);
%            dt2Sum = dt2Sum - data(1).*timeValues(1).^2;
%            dt3Sum = dt3Sum - data(1).*timeValues(1).^3;           
%            
%        end

%        % Solve for quadratic coefficients
%        p = solveCoefficients(A,b);
       p = polyfit(timeValues,data,2);
%        for j = 1:trainDepth
%           % Find trend line for intial values
%           trendLine(j) = p*[timeValues(j)^3; timeValues(j)^2; timeValues(j); 1];
%        end
      
       trendLine = polyval(p,timeValues);
       
       if isempty(trendLineCum)
           trendLineCum = trendLine;
       else
           trendLineCum = [trendLineCum trendLine(end)];
       end   
       
    end

    i = i + 1;
    
    rawDataText = fgetl(fid);
end
fclose(fid);

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

    p = [x(4) x(3) x(2) x(1)];