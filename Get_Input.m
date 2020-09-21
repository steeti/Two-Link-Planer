function[L1,L2,x,y]=Get_Input()
%asking the user to input value of the first arm and checking if the value 
%is valid
%if the value is not valid, the program will show and invalid message and
%will ask the user to input the value again
L1=input('Enter the length of the first arm');
while L1<=0
    fprintf('invalid input. ')
    L1=input('Enter the length of the first arm');
end
%asking the user to input value of the second arm and checking if the value
%is valid
%if the value is not valid, the program will show and invalid message and 
%will ask the user to input the value again
L2=input('Enter the length of the second arm');
while L2<=0
    fprintf('invalid input. ')
    L2=input('Enter the length of the second arm');
end
%asking the user to input value of the coordinates and checking if the 
%value is valid
%if the value is not valid, the program will show and invalid message and 
%will ask the user to input the value again
x=input('Enter the x coordinate of the end point of the robotic arm');
y=input('Enter the y coordinate of the end point of the robotic arm');
while(L1+L2<sqrt((x^2)+(y^2)))
           fprintf('Invalid coordinate. ');
            x=input('Enter the x coordinate of the end point of the robotic arm ');
            y=input('Enter the y coordinate of the end point of the robotic arm: ');
end 
while(L1-L2>sqrt((x^2)+(y^2)))
           fprintf('Invalid coordinate. ');
            x=input('Enter the x coordinate of the end point of the robotic arm ');
            y=input('Enter the y coordinate of the end point of the robotic arm: ');
end 
end


