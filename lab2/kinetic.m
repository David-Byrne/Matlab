%KINETIC.m
%Graphs the kinetic energy of objects with velocity up to 100m/s and mass
%of 10kg

%% Initialises arrays
velo = 0:100;
mass = 0:10;

%% Creates Meshgrid
[V,M] = meshgrid(velo, mass);
E = .5*M.*V.*V;

%% Plots the surface graph
surf(V,M,E);
xlabel('Velocity in m/s');
ylabel('Mass in kg');
title('Kinetic energy in Joules');
colorbar('eastoutside'); 