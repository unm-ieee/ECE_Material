function [X_reconstructed XL] = reconstructData(X)
% [X_reconstructed XL] = reconstructData(X)
%
% Title  :      Reconstruct sampled data signal
%
% Description : Reduces noise by
%               1.	Filter to remove high frequency content introduced by sampling. 
%                   (A Low-pass Butterworth filter with 20 poles at approximately 
%                   10Hz is used).
%               2.	Decimate the filtered data (Save every 4th observation)
%               3.	Upsample and fill vacant values by repeating saved values 
%                   in the removed observation.
%               4.	Filter to smooth or blend the data.  (Uses a Butterworth 
%                   filter with 20 poles at approximately 10Hz)
% 
% Reference :  
%
% Input Parameters :  
%   X           Data 
%
% Output Parameters : enhanced signal  
%   X_reconstructed  Data after reconstruction
%   XL               Data after initial low pass filtering
%             
% Author :      E Hamke, 2012
% ----------------------------------------------------------------------
    downSampleInterval = 4;

    % Pass data through a lowpass filter
    [B,A] = butter(20,0.314,'low');
    XL = filtfilt(B,A,X);
    
    % Save every 4th data point
    X_downSampled = XL(1:downSampleInterval:end);
    
    % Preallocate and initialize up sampled data
    X_upsampled = zeros(1,length(XL));

    % copy data into following empty data elements
    sizeD = length(X_downSampled);

    for i = 1:downSampleInterval
        % initialize number of elements to be copied
        indicies = sizeD;
        
        % Check to see if all values need to be copied
        if length(i:downSampleInterval:length(XL)) ~=  sizeD
              indicies = indicies-1;
        end
        
        % Copy values into the upsampled vector
        X_upsampled(i:downSampleInterval:length(XL)) = X_downSampled(1:indicies);
    end
    
    % Smooth the data
    X_reconstructed = filtfilt(B,A,X_upsampled);