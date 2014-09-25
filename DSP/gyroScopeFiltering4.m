function gyroScopeFiltering4
     close all

     % Read Data from data file
     A = csvread('gyroXdata_12_29_12_2.csv');

     timeValues = A(:,1) - min(A(:,1));

     % compute the average sampling interval
     ts = mean(diff(timeValues));
    
     gyroX = A(:,2);
     gyroY = A(:,3);
     gyroZ = A(:,4);
     
     gyros = [gyroX gyroY gyroZ];

     accelX = A(:,5);
     accelY = A(:,6);
     accelZ = A(:,7);
     
     accels = [accelX accelY accelZ];

     train = 3000;

     [gyros, accels] = detrendData(timeValues, train, gyros, accels);

     [gyros, accels] = noiseCancelation(ts, train, gyros, accels);  

     angleComparison(timeValues, ts, gyros, accels)

function [gyros, accels] = noiseCancelation(ts, train, gyros, accels)
     
     % Define physical constants
     gravity = 9.8;
     
     % Compute average frequency
     fs = 1/ts;
     
     gyros = cancelSignalNoise(gyros, fs, train);
     
     accels = cancelSignalNoise(accels, fs, train);
     accels(:,3) = accels(:,3) + gravity;
     
function [X] = cancelSignalNoise(signal, fs, train)
     X = signal;
     alpha = std(X);
     XS = [];
     
     [nn nVar] = size(X);
     for i = 1:nVar
        gaussFilter = gausswin(16,1/alpha(i));
        if sum(gaussFilter) > 0
           gaussFilter = gaussFilter / sum(gaussFilter); % Normalize.
           XST = conv(X(:,i), gaussFilter);
           XST = XST(1:length(signal));
        else
           XST = X(:,i);
        end
        XS = [XS XST];
     end
     
     X = WienerNoiseReduction(XS, fs, train);
     
function angleComparison(timeValues, dt, gyros, accels)

    [rollAcc pitchAcc] = gravityNormal(accels);
    
    [rollInt pitchInt] = gyroIntegration(gyros, dt);
    
    [rollMix pitchMix] = gyroIntegrationAccels(gyros, accels, dt);
  
    figure ()
        plot(timeValues,   rollAcc * 180/pi, 'b', ...
             timeValues,   rollInt * (max(abs(rollAcc))/max(abs(rollInt)))* 180/pi,'r', ...
             timeValues,   rollMix * (max(abs(rollAcc))/max(abs(rollMix)))* 180/pi,'g--')
        legend('Accels', 'Gyros', 'Mixed')
        xlabel('Time (seconds)')
        ylabel('Roll Angle (º)');
   
    figure ()
        plot(timeValues,  pitchAcc * 180/pi, 'b', ...
             timeValues,  pitchInt*(max(pitchAcc)/max(abs(pitchInt))) * 180/pi, 'r', ...
             timeValues,  pitchMix * (max(abs(pitchAcc))/max(abs(pitchMix)))* 180/pi,'g--')
        legend('Accels', 'Gyros', 'Mixed')
        xlabel('Time (seconds)')
        ylabel('Pitch Angle (º)');
        
function [roll pitch] = gravityNormal(accels)

    % Seperate data channels into seperate variables
    accelX = accels(:,1);
    accelY = accels(:,2);
    accelZ = accels(:,3);
    
    gNorm = sqrt(accelX.^2+accelY.^2+accelZ.^2);

    pitch = -asin(accelX./gNorm);
    roll = asin(accelY./gNorm.*cos(pitch));
    
function [roll pitch] = gyroIntegration(gyros, dt)

    roll0 = 0;
    pitch0 = 0;
    yaw0 = 0;
    
    angles = [roll0; pitch0; yaw0];   

    for i = 1:length(gyros)-1
        phi = angles(1,i);
        theta = angles(2,i);
        
        J = [1 sin(phi)*tan(theta) sin(phi)*tan(theta); 
             0 cos(phi) -sin(phi); 
             0 sin(phi)/cos(theta) cos(phi)/cos(theta)];
        angle_dot = J * gyros(i,:)';       
        angles(:,i+1) = angles(:,i) + angle_dot* dt;
        
        roll = angles(1,:);
        pitch = angles(2,:);
    end
    
function [roll pitch] = gyroIntegrationAccels(gyros, accels, dt)

   [roll pitch] = gravityNormal(accels);

    roll0 = 0;
    pitch0 = 0;
    yaw0 = 0;
    
    angles = [roll0; pitch0; yaw0];   

    for i = 1:length(gyros)-1
        phi = roll(i);
        theta = pitch(i);
        
        J = [1 sin(phi)*tan(theta) sin(phi)*tan(theta); 
             0 cos(phi) -sin(phi); 
             0 sin(phi)/cos(theta) cos(phi)/cos(theta)];
        angle_dot = J * gyros(i,:)';       
        angles(:,i+1) = angles(:,i) + angle_dot* dt;
        
        roll = angles(1,:);
        pitch = angles(2,:);
    end

