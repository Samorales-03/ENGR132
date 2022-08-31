%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Calculate the light passing through a coated and non-coated lens
%
% Assignment Information
%   Assignment:     A05, Problem 2
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ____________________
%% INITIALIZATION
t1 = deg2rad(45) %incident angle in rad
t2 = deg2rad(33) % transmitted angle in rad
n1 = 1.3 %reflective index of the coating (unitless)
n2 = 1.8 %refractive index of glass (unitless)
n3 = 1 %refractive index of air (unitless)

%% ____________________
%% CALCULATIONS
% Calculations for glasses with coating
r1 = ((n1*cos(t1)-n3*cos(t2))/(n1*cos(t1)+n3*cos(t2)) - (n2*cos(t1)-n1*cos(t2))/(n2*cos(t1)+n1*cos(t2)))^2 % reflected intensity with with coating (unitless)
T_coat = 1-r1 % transmitted intensity with coating (unitless)

% Calculations for glasses without coating
r2 = ((n2*cos(t1)-n3*cos(t2))/(n2*cos(t1)+n3*cos(t2)))^2 % reflected intensity without coating (unitless)
T_noCoat = 1-r2 % transmitted intensity without coating (unitless)

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf('The transmitted intensity\n')
fprintf('With the coating is: %.3f\n', T_coat)
fprintf('Without the coating is: %.3f\n', T_noCoat)

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.





