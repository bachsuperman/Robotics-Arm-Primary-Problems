clear all
close all
clc

imshow('Lab1CircularRaceTrack.jpg');
axis on
hold on;

car1 = SE2(300,500,0).T;
car1_h = trplot2(car1, 'frame', '1', 'color', 'b', 'length',50);
totalstep = 360;
Diameter = 484;
car1_trans = SE2((pi*Diameter)/totalstep,0,0).T;
car1_rot = SE2(0,0,-2*pi/totalstep).T;







