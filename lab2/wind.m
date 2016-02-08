% WIND.m
% Reads in weather for 4 days and then the user can choose which day's
% weather to plot.

%% Read data into appropriate vectors
data = xlsread('IRUSE_weather_Jan2015.xlsx');
mins = data(:,1);
speed = data(:,2);
gusts = data(:,3);
press = data(:,4);

%% Get Day
day = input('What day would you like to graph? Enter 1, 2, 3 or 4\n');
from = 1 + (day-1)*1440;

%% Draws graphs
subplot(3,1,1);
plot(mins(from:from+1440), gusts(from:from+1440))
xlabel('Minutes since beginning of January, 2015');
ylabel('Speed of gusts (>3s) in m/s');
title('Gusts on a given day');

subplot(3,1,2);
plot(mins(from:from+1440), press(from:from+1440))
xlabel('Minutes since beginning of January, 2015');
ylabel('Atmo. pressure in mbar');
title('Pressure on a given day');

subplot(3,1,3);
scatter(press(from:from+1440), gusts(from:from+1440))
corr = corrcoef(press(from:from+1440), gusts(from:from+1440));
corrStr = num2str(corr(1,2));
xlabel('Atmo. pressure in mbar');
ylabel('Speed of gusts (>3s) in m/s');
title(strcat('Scatter plot of atmospheric pressure vs wind speed. Correlation coefficient is: ', corrStr));
