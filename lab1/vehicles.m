%VEHICLES
%Reads in excel file and plots the engine CC vs fuel used per 100km for
%2000 and 2011
cc = xlsread ('SEAI_fuel_2000.xlsx', 'A6:A27');
pet2000 = xlsread ('SEAI_fuel_2000.xlsx', 'B6:B27');
die2000 = xlsread ('SEAI_fuel_2000.xlsx', 'E6:E27');
pet2011 = xlsread ('SEAI_fuel_2011.xlsx', 'B6:B27');
die2011 = xlsread ('SEAI_fuel_2011.xlsx', 'E6:E27');

%plot(cc, die2000, '-r', cc, die2011, 'b-')
plot(cc, pet2000, '-r', cc, pet2011, 'b-')
xlabel('Engine CC');
ylabel('litres/100KM');
%title('Graph of a diesel''s engine efficiency against it''s CC in 2000 and 2011');
title('Graph of a petrol''s engine efficiency against it''s CC in 2000 and 2011');
legend('2000','2011','Location','northwest')

