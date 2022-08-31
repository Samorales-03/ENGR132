function [vol] = A10_poolRound_vboltass(L1, L2, Ds, Dd)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Calculating the volume of the round pool
%
% Function Call
% function [vol] = A10_poolRound_vboltass(L1, L2, Ds, Dd)
%
% Input Arguments
% L1
% L2
% Ds
% Dd
%
% Output Arguments
% vol
%
% Assignment Information
%   Assignment:     A10, Problem #1
%   Author:         Victoria Boltasseva, vboltass@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [x] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Samuel Morales, moral137@purdue.edu, Caterina 
%   Oliverio, coliveri@purdue.edu, Ragan Redding rredding@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
feet_to_gallon = 7.481 ; %Converts cubic feet to gallons
%% ____________________
%% CALCULATIONS

if L2<0 | L1<0 | Dd<0 | Ds<0 %checking if input is positive
    fprintf('One of the inputs is negative, please enter a correct value (output is not meaningful)') %if one of the inputs are negative an error message will display
    vol = -1;
else %if inputs are valid, volume will be calculated
    vol1 = pi * (L1)^2 * Ds; %calculating the first part of the volume
    vol2 = (((Dd-Ds) * pi)/3) * (L1^2 + L2^2 +L1*L2);
    vol = (vol1 +vol2) * feet_to_gallon;
end %end of loop

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



