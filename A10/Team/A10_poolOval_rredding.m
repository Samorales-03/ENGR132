function[Vol_Oval]=A10_poolOval_rredding(L1, L2, Ds, Dd)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% These are the calculations of the oval pool.
%
% Function Call
% A10_poolOval_rredding.m
%
% Input Arguments
% L1= semi-major axis of the surface ellispse
% L2= semi-minor axis of the surface ellipse
% Ds=is the shallow end depth
% Dd=is the deep and depth

% Output Arguments
% Vol_Oval= overall volume of the shape
%
% Assignment Information
%   Assignment:     A10, Problem #1
%   Author:         Ragan Redding, rredding@purdue.edu
%   Team ID:        19
%   Academic Integrity:
%     [X] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
feet_to_gallons = 7.481 ; %Transform cubic feet to gallons
%% ____________________
%% CALCULATIONS

if L2<0 | L1<0 | Ds<0 | Dd<0 %Checks if inputs are valid
    fprintf('One of the inputs is negative, please enter a correct value (output is not meaningful)')
    Vol_Oval=-1
else
    Vol_Oval1= ((1/3)*(pi)*(L1 * L2) * (Dd-Ds)); %Calculate the upper part, it is a cylinder with oval base
    Vol_Oval2= ((pi)*(L1 * L2)*(Ds)); %Calculatre the cone section
    Vol_Oval= (Vol_Oval1+ Vol_Oval2)*feet_to_gallons; %Sum both sections
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



