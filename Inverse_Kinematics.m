function[theta1a,theta1b,theta2a,theta2b]=Inverse_Kinematics(x,y,L1,L2)
% calculating d and inverse kinematics' equation to check for two possible
%solutions for angles
D=(x^2+y^2-L1^2-L2^2)/(2*L1*L2);
theta1a=atand((sqrt(1-D^2))/D);
theta2a=atand((-sqrt(1-D^2))/D);
theta1b=atand(y/x)-atand((L2*sind(theta1a))/(L1+L2*cosd(theta1a)));
theta2b=atand(y/x)-atand((L2*sind(theta2a))/(L1+L2*cosd(theta2a)));
end 

