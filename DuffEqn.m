close all
clear
clc
global gamma omega epsilon GAM OMEG
gamma=0.1;
omega=1;
epsilon=0.25;
OMEG=2;
% we get chaos and a strange attractor if the driving force GAM=1.5
% Poincaré section is a complicated curve namely a fractal
GAM=1.5;
[t x]=ode45(@duff_func,0:2*pi/OMEG/100:4000,[0 1]);
figure(1)
plot(t(2000:6000),x(2000:6000,1),'r')
axis tight
title('time series')
figure(2)
plot(x(2000:10000,2),x(2000:10000,1),'b')
axis tight
title('phase space')
