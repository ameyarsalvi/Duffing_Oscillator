function xdot=duff_func(t,x)
global gamma omega epsilon GAM OMEG
xdot(1)=-gamma*x(1)+omega^2*x(2)-epsilon*x(2)^3+GAM*cos(OMEG*t);
xdot(2)=x(1);
xdot=xdot';
end
