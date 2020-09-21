function[link1,link2]=Trans_Matrix(L1,L2,angle1,angle2)
%creating four by four array
array1=[cosd(angle2), -sind(angle2), 0, L1*cosd(angle2); sind(angle2), cosd(angle2), 0, L1*sind(angle2); 0, 0, 1, 0; 0, 0, 0, 1];
array2=[cosd(angle1), -sind(angle1), 0, L2*cosd(angle1); sind(angle1), cosd(angle1), 0, L2*sind(angle1); 0, 0, 1, 0; 0, 0, 0, 1];
%creating two by four array
link11=[-L1, 0; 0, 0; 0, 0; 1, 1];
link22=[-L2, 0; 0, 0; 0, 0; 1, 1];
% to find final position link
link1=array1*link11;
link2=array1*array2*link22;
end 
