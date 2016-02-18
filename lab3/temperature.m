%temperature.m
% Takes recording once per hour and plots it as well as trying to fit the
% curve for a day

%% Reads in and processes file data
data = xlsread('Jan_temp_2015.xlsx');
hourIntervalData = data(1:60:end, :);%data start:interval:toTheEnd

[maxValue, maxIndex] = max(hourIntervalData);
[minValue, minIndex] = min(hourIntervalData);

%% Plots the temperature and max and min over all 7 days for subplot part 1
subplot(3,1,1)
plot(hourIntervalData, 'b');
title('Temperature on the hour in Jan 2015'); 
xlabel('Hours since start of 1/1/2015');
ylabel('Temperature in *C');
hold on;

subplot(3,1,1)
plot(minIndex, minValue,'b*');
text(minIndex, minValue,' Min');
hold on;

subplot(3,1,1)
plot(maxIndex, maxValue,'b*');
text(maxIndex, maxValue,' Max');
hold off;

%% Gets user input for day chosen to analise
day = -1;
while (day < 1 || day > 7)
    day = input('Enter the selected day from 1 to 7: ');
end

daysTemp = hourIntervalData((day-1)*24+1 :day*24);

%% Plots the data for a single day
hours = 0:23;
hours = hours(:) ;

subplot(3,1,2)
plot (hours, daysTemp, 'r')
hold on;
dayStr = num2str(day);
title(strcat('Temperature over the course of 24 hours on January: ', dayStr));
xlabel('Time in hours');
ylabel('Temperature in *C');

%% Gets 3rd order approximation
p3 = polyfit(hours ,daysTemp ,3);
p3Graph = polyval(p3, hours);
plot(hours, p3Graph, 'g--');
hold on;

%% Gets 7rd order approximation
p7 = polyfit(hours ,daysTemp ,7);
p7Graph = polyval(p7, hours);
plot(hours, p7Graph ,'m--')

legend('Actual data','3rd order polynomial approximation','7th order polynomial approximation','Location','eastoutside')
hold off;

%% Part 2: Manually generate sinosoidal approximation for a day

[m,n] = size(hours);
[dayMax, dayMaxIndex] = max(daysTemp);

F = [ones(size(hours)) cos((2*pi/24)*(hours-dayMaxIndex))];
a = F\daysTemp;
tfit=(0:0.1:m+5)';% adds an extra 5 hours to show the model doesn't completely break after the day finishes

fit = [ones(size(tfit)) cos((2*pi/24)*(tfit-dayMaxIndex))]*a;

subplot(3,1,3)
plot(hours, daysTemp, 'r')
title(strcat('Temperature & temperature approximation over the course of 24 hours on January: ', dayStr));
xlabel('Time in hours');
ylabel('Temperature in *C');
hold on;
subplot(3,1,3)
plot(tfit, fit, 'b--')
legend('Actual data','Sinusoidal approximation of data','Location','eastoutside')
hold off;
