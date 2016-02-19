%% WHALE Models a Whale call 
%% Variable declaration

fs=4000;
f0=100;
%% Create time vector and harmonics

t=0:1/fs:5;
y1=sin(2*pi*f0*t);
y2=sin(2*pi*2*f0*t); 
y3=sin(2*pi*3*f0*t);
y0=y1+y2+y3;

%% Create exp decay fn
A=(6*exp(-1.5*t)).*sin(2*pi*0.65*t);
call=A.*y0;
%% Play through sound card & plot
soundsc(call,fs);
plot(t,call);
