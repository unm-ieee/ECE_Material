function [esTSNR]=WienerNoiseReduction(ns, fs, train)

% [esTSNR]=TSNRfilter(ns,fs,IS)
%
% Title  :      Tow Step Noise Reduction
%
% Description : Wiener filter based on tracking a priori SNR using Decision-Directed 
%               method, proposed by Plapous et al 2006. The two-step noise reduction
%               (TSNR) technique removes the annoying reverberation effect while
%               maintaining the benefits of the decision-directed approach. However,
%               classic short-time noise reduction techniques, including TSNR, introduce
%               harmonic distortion in the enhanced signal. To overcome this problem, a
%               method called harmonic regeneration noise reduction (HRNR)is implemented
%               in order to refine the a priori SNR used to compute a spectral gain able 
%               to preserve the signal harmonics.
%               
% 
% Reference :  (1) Plapous, C.; Marro, C.; Scalart, P., "Improved Signal-to-Noise Ratio
%                  Estimation for Speech Enhancement", IEEE Transactions on Audio, Speech,
%                  and Language Processing, Vol. 14, Issue 6, pp. 2098 - 2108, Nov. 2006 
%              (2) WienerNoiseReduction.m - LIU Ming, 2008, SCALART Pascal october, 2008
%
% Input Parameters :  
%   ns          Noisy signal 
%   fs          Sampling frequency (in Hz)
%   IS          Initial Silence (or non-signal activity) Period (in number of samples)
%
% Output Parameters : enhanced signal  
%   esTSNR      enhanced signal with the Two-Step Noise Reduction method 
%             
% Author :       LIU Ming, 2008
% Modified :     SCALART Pascal october, 2008
%                Eric Hamke January, 2013
% ----------------------------------------------------------------------
    % determine the number of elements and the number of signals
    [nValues, nSignals] = size(ns);

    % determine the window length at 4 times the sampling frequency
    wl = fix(fs*2);

    % FFT size is twice the window length
    NFFT = 2*wl;             
    
    % Create windowing function 
    hanwin1 = hann(wl);
    hanwin = hanwin1;
    for n = 2:nSignals
       hanwin = [hanwin hanwin1];	
    end

    % Set percent of new terms in window
    SP = 0.01;               
    normFactor = 1/SP;
    
    % Compute the number of values that overlap
    overlap = fix((1-SP)*wl);
    
    % Determine the number of new points in th frame
    offset = wl - overlap;
    
    % Determine the number of frames to be processed
    max_m = fix((nValues-NFFT)/offset);

    % Pre-allocate memory to speed up processing
    oldmag = zeros(NFFT, nSignals);
    news = zeros(nValues, nSignals);
    newmags = zeros(NFFT, max_m);

    % Initialize couter for computing noise frequency statistics
    count = 0; 
    nsum = zeros(NFFT, nSignals);

    for m = 0:train-wl
      nwin = ns(m+1:m+wl,:).*hanwin;	
      nsum = nsum + abs(fft(nwin,NFFT)).^2;
      count = count + 1;
    end
    
    % Average frequency spectrum for all the frames being processed.
    averageFrqSpec = (nsum)/count;

    for m = 0:max_m
       % Retrieve signal data for the current frame
       begin = m*offset+1;    
       iend = m*offset+wl;
       signal=ns(begin:iend,:);
     
       % Perform the two-step noise reduction. 
       [newmag ffty] = tsnrFilter(signal, oldmag, averageFrqSpec, NFFT, hanwin);

       % Save old magnitudes for use in next step
       oldmag = abs(newmag);
       
       % Update predictions of noise free signal
       news(begin:begin+NFFT-1,:) = news(begin:begin+NFFT-1,:) + real(ifft(ffty,NFFT))/normFactor;
    end

    esTSNR=news;

function NewGain = gaincontrol(Gain,ConstraintInLength)
%
%Title  : Additional Constraint on the impulse response  
%         to ensure linear convolution property
%
%
%Description : 
%
% 1- The time-duration of noisy signal frame is equal to L1 samples.
%
% 2- This frame is then converted in the frequency domain 
%       by applying a short-time Fourier transform of size NFFT leading
%       to X(wk) k=0,...,NFFT-1 when NFFT is the FFT size.
%
% 3- The estimated noise reduction filter is G(wk) k=0,1,...,NFFT-1 
%       leading to an equivalent impulse response g(n)=IFFT[G(wk)] 
%       of length L2=NFFT
%
% 4- When applying the noise reduction filter G(wk) to the noisy 
%       signal spectrum X(wk), the multiplication S(wk)=G(wk)X(wk) is
%       equivalent to a convolution in the time domain. So the
%       time-duration of the enhanced signal s(n) should be equal to 
%       Ltot=L1+L2-1.
%
% 5- If the length Ltot is greater than the time-duration of the IFFT[S(wk)] 
%       the a time-aliasing effect will appear.
%
% 6- To overcome this phenomenon, the time-duration L2 of the equivalent
%       impulse response g(n) should be chosen such that Ltot = L1 + L2 -1 <= NFFT 
%       => L2 <= NFFT+1-Ll
%
%       here we have NFFT=2*Ll so we should have L2 <= Ll+1. I have made
%       the following choice : the time-duration of g(n) is limited to
%       L2=NFFT/2=L1 (see lines 88 and 192)
%
%Author : SCALART Pascal
%
%October  2008
%

    meanGain = mean(Gain.^2);
    [NFFT nSignals] = size(Gain);

    win1 = hann(ConstraintInLength);
    win = win1;
    for n = 2:nSignals
       win = [win win1];	
    end

    % Frequency -> Time
    % computation of the non-constrained impulse response
    ImpulseR=real(ifft(Gain));

    % application of the constraint in the time domain
    ImpulseR2=[ImpulseR(1:ConstraintInLength/2,:).*win(1+ConstraintInLength/2:ConstraintInLength,:); ...
               zeros(NFFT-ConstraintInLength,nSignals); ...
               ImpulseR(NFFT-ConstraintInLength/2+1:NFFT,:).*win(1:ConstraintInLength/2,:)];

    % Time -> Frequency
    NewGain=abs(fft(ImpulseR2,NFFT));

    meanNewGain=mean(NewGain.^2);
    
    gainNormalize = sqrt(meanGain./meanNewGain);
    
    NewGain1 = [NewGain(:,1).*gainNormalize(:,1)];
    for n = 2:nSignals
       NewGain1 = [NewGain1 NewGain(:,n).*gainNormalize(:,n)];	
    end
    
    NewGain = NewGain1;
    
function [newmag ffty] = tsnrFilter(signal, oldmag, averageFrqSpec, NFFT, hanwin)

   alpha = 0.98;

   winy = signal.*hanwin;
   ffty = fft(winy,NFFT);          %perform fast fourier transform
   phasey = angle(ffty);           %extract phase
   magy = abs(ffty);               %extract magnitude
   postsnr = ((magy.^2) ./ averageFrqSpec)-1 ;  %calculate a posteriori SNR
   postsnr=max(postsnr,0.01);  % limitation to prevent distorsion
   
   %calculate a priori SNR using decision directed approach
   eta = alpha * ( (oldmag.^2)./averageFrqSpec ) + (1-alpha) * postsnr;
   newmag = (eta./(eta+1)).*  magy;
   
   %calculate TSNR
   tsnr = (newmag.^2) ./ averageFrqSpec;
   Gtsnr = tsnr ./ (tsnr+1);         %gain of TSNR 
   Gtsnr = gaincontrol(Gtsnr,NFFT/2);
   
   newmag = Gtsnr .* magy;
   ffty = newmag.*exp(i*phasey);