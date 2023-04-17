clear; close all; clc;

model = importGeometry('AUGER_Dispenser_Copy.stl');

pdegplot(model)

figure(2)

scale(model,2)
pdegplot(model)