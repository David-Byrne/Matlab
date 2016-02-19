function [ fs, f0, dur ] = whale_data_input( )
%whale_data_input Initialises values for whale data
%   Sets the sample and fundamental frequencies and duration of the call
    fs = input('Enter sample frequency, recommended 4000 Hz: ');
    f0 = input('Enter Fundamental frequency, recommended 20 Hz: ');
    dur = input('Enter duration, recommended 8 seconds: ');
end

