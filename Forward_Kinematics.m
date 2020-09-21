function[angle1,angle2]=Forward_Kinematics(x,y,L1,L2,theta1a,theta1b,theta2a,theta2b)
 %using forward kinematics equations to verify two possible angles and 
 %calculate x and y for both pairs of the angles.
xa=L1*cosd(theta1b)+L2*cosd(theta1b+theta1a);
ya=L1*sind(theta1b)+L2*sind(theta1b+theta1a);
xb=L1*cosd(theta2b)+L2*cosd(theta2b+theta2a);
yb=L1*sind(theta2b)+L2*sind(theta2b+theta2a);
%checking if x and y in each pair are equal to the desired points through 
%if statement and ifelse statements.  
if (xa<=x+0.001 && xa>=x-0.001) && (ya<=y+0.001 && ya>=y-0.001)
    angle1=theta1a;
    angle2=theta1b;  
elseif (xb<=x+0.001 && xb>=x-0.001)&& (yb<=y+0.001 && yb>=y-0.001)
    angle1=theta2a;
    angle2=theta2b; 
else
   fprintf('Error, the position cant be reached')
end
end
