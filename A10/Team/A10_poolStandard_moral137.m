function [out] = A10_poolStandard_moral137(l_1, l_2, d_s, d_d)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Calculates the volume of the standard pool with the given measures
%
% Function Call
% The function will be called by main all will be given all the measures
%
% Input Arguments
% l_1 as the surface lenght
% l_2 as the surface width
% d_s as the shallow end depth
% d_d as the deep end depth
%
% Output Arguments
% Out as the volume
%
% Assignment Information
%   Assignment:     A10, Problem 1
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
feetcube_to_gallon = 7.481 ; %Transformation factor from cube feet to gallons

%% ____________________
%% CALCULATIONS
%The calculations will be done from the lest section of the pool to the
%right


if l_1 < 0 | l_2 < 0 | d_s < 0 | d_d < 0 
    fprintf("One of the inputs is negative, please enter a correct value (output is -1 not meaningful).")
    out = -1
else
    %%Calculations for the left "house-shaped" volume
    box_left = d_s * l_2 * 2 / 3 * l_1 ; %Calculates the "box part" of the house shaped section
    triangle_left = (d_d - d_s) * 2 /3 * l_1 / 2 * l_2 ; %Calculates the "traingle part"

    house_volume = box_left + triangle_left ; %Calculates total volume of the left part

    %%Calculations for the right box

    box_right = d_s * l_1 / 3 * l_2 ; %Calculates the volume of the box at the right of the pool

    %%Calculations for total volume

    out = box_right + house_volume ; %Calculate total volume in ft^3
    out = out * feetcube_to_gallon ; %Returns the total volume in gallons
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



