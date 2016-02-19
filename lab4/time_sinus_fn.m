function [ t, y ] = time_sinus_fn( f0, fs, dur )
%TIME_SINUS_FN Summary of this function goes here
%   Detailed explanation goes here
    t=0:1/fs:dur;
    y1=sin(2*pi*f0*t);
    y2=sin(2*pi*2*f0*t);
    y3=sin(2*pi*3*f0*t);
    y=y1+y2+y3;
end

