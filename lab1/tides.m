%TIDES 
%plots a tidal current with amplitude 5 and period 12 hours and 25 minutes
time = 0:.1:72; %array from 0 to 72 with values increasing by .01 in each entry
period = 12+(25/60); %hours plus minutes
current = 5*sin((2*pi/period)*time);
plot(time, current, 'b-')
xlabel('Time in hours');
ylabel('Velocity of a tidal current in m/s');
title('Graph of Tidal Current''s Velocity over time');