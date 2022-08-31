    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Shows the steps for safely filling fluid tank given certain conditions,
% gives the number of increment and plots the final results.
%
% Assignment Information
%   Assignment:     A08, Problem 4
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Victoria Boltesseva, vboltass@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
clc;clear;
tank_d = 3.35; %Tank diameter (m)
tank_l = 14.5; %Tank length (m)
delta_h = 0.15; %Fluid height increment (m)
safe_percent = 0.8; %Safety percent
h = 0; %initializes height
indx = 1; %Initializes index for vector
%% ____________________
%% CALCULATIONS
tank_r = tank_d / 2; %Calculates the tank radius
L_c = tank_l - tank_d; %Calculates the lenght of the cylindrical section of the tank

%% Calculations for max volume
h_max = tank_d; %Height at max volume
cos_vmax = acos((tank_r - h_max) / tank_r); %arcosine expression
sqrt_vmax = (2 * tank_r * h_max - h_max^2)^(1/2); %Square root expression
V_max = pi * h_max^2 * (3 * tank_r - h_max)/ 3; %First section of max volume
V_max = V_max + L_c * (tank_r^2 * cos_vmax - (tank_r - h_max) * sqrt_vmax); %Includes second section of max volume
safe_vol = safe_percent * V_max; %Safe volume used in while loop

%% Calculations for V_tol
% Calculations for higher value
h_1 = tank_r + 0.5 * delta_h ; % height of higher value
cos_h_1 = acos((tank_r - h_1) / tank_r); %arcosine expression
sqrt_h_1 = (2 * tank_r * h_1 - h_1^2)^(1/2); %Square root expression
V_h_1 = pi * h_1^2 * (3 * tank_r - h_1) / 3; %First section of volume
V_h_1 = V_h_1 + L_c * (tank_r^2 * cos_h_1 - (tank_r - h_1) * sqrt_h_1); %Includes second section of volume

% Calculations for lower value
h_2 = tank_r - 0.5 * delta_h ; % height of higher value
cos_h_2 = acos((tank_r - h_2) / tank_r); %arcosine expression
sqrt_h_2 = (2 * tank_r * h_2 - h_2^2)^(1/2); %Square root expression
V_h_2 = pi * h_2^2 * (3 * tank_r - h_2)/ 3; %First section of volume
V_h_2 = V_h_2 + L_c * (tank_r^2 * cos_h_2 - (tank_r - h_2) * sqrt_h_2); %Includes second section of volume

% Final value

V_tol = V_h_1 - V_h_2; %Tolerance  volume used in loop

%% Calculations for initial volume
cos_h = acos((tank_r - h) / tank_r); %arcosine expression
sqrt_h = (2 * tank_r * h - h^2)^(1/2); %Square root expression
V_h = pi * h^2 * (3 * tank_r - h) / 3; %First section of volume
V_h = V_h + L_c * (tank_r^2 * cos_h - (tank_r - h) * sqrt_h); %Final initial volume at h = 0

height(indx) = h; %Sets up the initial height in the vector for graphing
volume(indx) = V_h; %Sets up the initial volume in the vector for graphing
%% While loop

while V_h < safe_vol - V_tol
    indx = indx + 1;
    h = h + delta_h; %Updates height by delta h
    height(indx) = h; %Assigns new height to the vector
    %Recalculates the volume at the new height
    cos_h = acos((tank_r - h) / tank_r); %arcosine expression
    sqrt_h = (2 * tank_r * h - h^2)^(1/2); %Square root expression
    V_h = pi * h^2 * (3 * tank_r - h) / 3; %First section of volume
    V_h = V_h + L_c * (tank_r^2 * cos_h - (tank_r - h) * sqrt_h); %Final volume at height = h
    
    volume(indx) = V_h; %Assigns new volume to volume vector
end

h_final = height(end);%Gets final height
v_final = volume(end); %Gets final volume5
%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAY

fprintf("The number of iterations were : %.f\n", indx-1)
fprintf("The safe fill volume is: %.2f meters^3\n", safe_vol)
fprintf("The final volume is: %.2f meters^3\n", v_final)

figure(1)
plot(height,volume, 'ro')
title("Volume of the tank")
xlabel("Height (meters)")
ylabel("Volume (meters^3)")
grid on
%% ____________________
%% RESULTS
%The number of iterations were : 16
%The safe fill volume is: 94.37 meters^3
%The final volume is: 91.18 meters^3
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







