%HouseThermalResistance
%Reads in measurements and calculates the thermal resistivity of your house

%% Gets house measurements
width = input('Enter the width of your house: ');
length = input('Enter the length of your house: ');
height = input('Enter the height of your house: ');
numWinDoors = input('Enter the number of windows and doors: ');

%% Calculates house dimensions
floorArea = width*length;
roofArea = width*length;
wallArea = (2*length*height) + (2*width*height);
volume = length*width*height;

%% Calculates window and door area
winDoorArea = 0;
for i = 1: numWinDoors
    winLen = input(sprintf('Enter the length of window/door %d : ', i));
    winWid = input(sprintf('Enter the width of window/door  %d : ', i));
    winDoorArea = winDoorArea + winLen*winWid;
end
wallFloorArea = wallArea + floorArea - winDoorArea;

%% Reads in U values
UfloorWall = input('Enter the U value of the floor/wall (maybe 0.3): ');
UwinDoor = input('Enter the U value of the window/door (maybe 2): ');
Uroof = input('Enter the U value of the roof (maybe 0.2): ');


%% Calculate total U and R values
UfloorWallTot = UfloorWall * wallFloorArea;
UwinDoorTot = UwinDoor * winDoorArea;
UroofTot = Uroof * roofArea;

Utot = UfloorWallTot + UwinDoorTot + UroofTot;
Rtot = 1/Utot;

disp(sprintf('The R-value of your house is:  %d', Rtot));
