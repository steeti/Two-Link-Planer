% calling the get input function to ask user for the length of arm one and
%two and the coordinates.
[L1,L2,x,y]=Get_Input();
% calling inverse kinematics function inorder to To find the angles in 
%order to move the hand to the desired coordinates.
[theta1a,theta1b,theta2a,theta2b]=Inverse_Kinematics(x,y,L1,L2);
% calling forward kinematics function to check which of the two sets of 
%angles is correct.
[angle1,angle2]=Forward_Kinematics(x,y,L1,L2,theta1a,theta1b,theta2a,theta2b);
% displaying angles on the screen
display(angle1);
display(angle2);
% calling trans matrix function to calculate the transformation matrix for 
%a DH set
[link1,link2]=Trans_Matrix(L1,L2,angle1,angle2);
% calling graph function to display the graph
[figure]=Graph(link1,link2);