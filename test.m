clc
clear all
close all

t=-2:0.01:1;
x=(3/2.*t+3).*(t<=0)+(-3.*t+3).*(t>0);

[t_y,y]=aperiodic_to_periodic(t,x,-20,20,1000,100,10);
plot(t_y,y);