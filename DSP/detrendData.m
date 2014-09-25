function [gyros, accels, mags] = detrendData(timeValues, train, gyros, accels, mags)
% [gyro, accel, mag] = detrendData(timeValues, gyro, accel, mag, train)
%
% Title  :      Deterend data
%
% Description : Removes trend from data
% 
% Reference :  
%
% Input Parameters :  
%   timeValues  Time in elapsed seconds from start of sensor data collection 
%   gyros       Gyroscope observations in sensor units (integer values)
%               [gyroX gyroY gyroZ]
%   accels      Accelerometer observations in sensor units (integer values)
%               [accelX accelY accelZ]
%   mag         Magnitometer observations in sensor units (integer values)
%               [magX magY magZ]
%   train       Training period (or no sensor movement) (in number of samples)
%
% Output Parameters : enhanced signal  
%   gyros       Gyroscope observations with trend removed
%   accels      Accelerometer observations with trend removed
%   mags        Magnitometer observations with trend removed
%             
% Author :      E Hamke, 2012
% ----------------------------------------------------------------------
            
    debug = true;

    % Process the gyroscope data
    gyros = detrendGyroData(timeValues, train, gyros);

    % Process the accelerometer data
    accels = detrendAccelData(timeValues, train, accels);
    
    if nargin > 4
      % Process the magnitometer data
      magsOut = detrendMagData(timeValues, train, magsIn);
    end
    
    % Debug - Display processed data
    if debug
       figure ()
       plot(timeValues, gyros(:,1), timeValues, gyros(:,2), timeValues, gyros(:,3))
    
       figure()
       plot(timeValues, accels(:,1), timeValues, accels(:,2), timeValues, accels(:,3))
       
       if nargin > 4
           figure()
           plot(timeValues, mags(:,1), timeValues, mags(:,2), timeValues, mags(:,3))
       end
    end
        
    function gyrosOut = detrendGyroData(timeValues, train, gyrosIn)
        %  Process three gyroscope channels
        % ----------------------------------------------------
        
            % Seperate data channels into seperate variables
            gyroX = gyrosIn(:,1);
            gyroY = gyrosIn(:,2);
            gyroZ = gyrosIn(:,3);

            % Reconstruct and detrend
            gyroX = processGyroData(timeValues, train, gyroX);
            gyroY = processGyroData(timeValues, train, gyroY);
            gyroZ = processGyroData(timeValues, train, gyroZ);
    
            % Merge data channels into single variable
            gyrosOut = [gyroX gyroY gyroZ];
        
    function gyroOut = processGyroData(timeValues, train, gyroIn)
        % Estimate trend line for a gyroscope data set
        %
        % Inputs:
        %   timeValues  Time in elapsed seconds from start of sensor data collection 
        %   gyroIn  Gyroscope data with trend
        %   train   Training period (or no sensor movement) (in number of samples)
        %
        % Outputs:
        %   gyroOut Gyroscope data without trend
        % ---------------------------------------------------
        
            % Reconstruct by down sampling and then upsampling
            [gyroOut XL] = reconstructData(gyroIn);
            gyroOut = gyroOut(1:length(gyroIn))';

            % Estimate trens in data
            [yp] = findTrend(timeValues, gyroOut, train);
            gyroOut = gyroOut - yp;
            
   function accelsOut = detrendAccelData(timeValues, train, accelsIn)
        %  Process three accelerometer channels
        % ----------------------------------------------------

            % define physical constants
            gravity = 9.8;

            % Seperate data channels into seperate variables
            accelX = accelsIn(:,1);
            accelY = accelsIn(:,2);
            accelZ = accelsIn(:,3);

            % Reconstruct and detrend
            accelX = processAccelData(timeValues, train, accelX);
            accelY = processAccelData(timeValues, train, accelY);
            accelZ = processAccelData(timeValues, train, accelZ) + gravity;
    
            % Merge data channels into single variable
            accelsOut = [accelX accelY accelZ];
        
    function accelOut = processAccelData(timeValues, train, accelIn)
        % Estimate trend line for a accelerometer data set
        %
        % Inputs:
        %   timeValues  Time in elapsed seconds from start of sensor data collection 
        %   accelIn  Accelerometer data with trend
        %   train   Training period (or no sensor movement) (in number of samples)
        %
        % Outputs:
        %   accelOut Accelerometer data without trend
        % ---------------------------------------------------
        
            % Reconstruct by down sampling and then upsampling
            [accelOut XL] = reconstructData(accelIn);
            accelOut = accelOut(1:length(accelIn))';

            % Estimate trens in data
            P = polyfit(timeValues(1:train),accelOut(1:train),1);
            f = polyval(P,timeValues);
            
            accelOut = accelOut - f;
        
  function magsOut = detrendMagData(timeValues, train, magsIn)
        %  Process three Magnetometer data channels
        % ----------------------------------------------------

            % Seperate data channels into seperate variables
            magX = magsIn(:,1);
            magY = magsIn(:,2);
            magZ = magsIn(:,3);
            
            % Determine mag dc gain values
            magXBase = mean(magX(1:train));
            magYBase = mean(magY(1:train));
            magZBase = mean(magZ(1:train));

            % Reconstruct and detrend
            magX = processMagData(timeValues, train, magX) + magXBase;
            magY = processMagData(timeValues, train, magY) + magYBase;
            magZ = processMagData(timeValues, train, magZ) + magZBase;
    
            % Merge data channels into single variable
            magsOut = [magX magY magZ];
        
    function magOut = processMagData(timeValues, train, magIn)
        % Estimate trend line for a magnetometer data set
        %
        % Inputs:
        %   timeValues  Time in elapsed seconds from start of sensor data collection 
        %   magIn   Magnetometer data with trend
        %   train   Training period (or no sensor movement) (in number of samples)
        %
        % Outputs:
        %   magOut  Magnetometer data without trend
        % ---------------------------------------------------
        
            % Reconstruct by down sampling and then upsampling
            [magOut XL] = reconstructData(magIn);
            magOut = magOut(1:length(magIn))';

            % Estimate trens in data
            P = polyfit(timeValues(1:train),magOut(1:train),1);
            f = polyval(P,timeValues);
            
            magOut = magOut - f;
        