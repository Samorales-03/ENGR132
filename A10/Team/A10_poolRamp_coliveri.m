function Ramp_Pool_Volume = A10_poolRamp_coliveri(L_1,L_2,D_s,D_d)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calculates the volume of the ramp pool given the lengths
% and depths from the main function.
%
% Function Call
% coliveri_RampVolume
%
% Input Arguments
% L_1 - length of pool in feet
% L_2 - width of pool in feet
% D_s - Depth of shallow end in feet
% D_d - Depth of deep end in gallons
%
% Output Arguments
% Ramp_Pool_Volume - The volume of the ramp pool in cubic feet
%
% Assignment Information
%   Assignment:     A10 Team, Problem 1
%   Author:         Caterina Oliverio, coliveri@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
Gallons_Conversion = 7.481; % Conversion factor from cubic feet to gallons

%% ____________________
%% CALCULATIONS
if L_1<0 | L_2<0 | D_s<0 | D_d<0 %Checks it inputs are valid
    printf(2, 'One of the inputs is negative, please enter a correct value. (Output is not meaningful)')
    Ramp_Pool_Volume = -1;
else
    %%Calculates the volume from left to right
    Volume_1 = 0.5 * L_1/3 * L_2 * D_s;  %Right-most triangle
    Volume_2 = D_s * (L_1*2)/3 * L_2; %Big rectangle
    Volume_3 = 0.5 * (D_d - D_s) * L_1/3 * L_2; %Last triangle at bottom right
    Ramp_Pool_Volume_Feet = Volume_1 + Volume_2 + Volume_3; %Sums all the volumes
    Ramp_Pool_Volume = Ramp_Pool_Volume_Feet * Gallons_Conversion; %Converts to gallons
end

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% COMMAND WINDOW OUTPUT


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



