function [k_s] = A10Prob2_springs_moral137(M , lenghts , s_lenghts)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Given the total mass, lenght of body section and scaled lenghts, returns
%the springs constants of each section
%
% Function Call
% A10Prob2_springs_moral137
%
% Input Arguments
% M as the total mass
% l as the vector containing the lenght of the body sections
% s_lenghts as the scaled lenghts
%
% Output Arguments
% k_s as a vector containing the springs contants
%
% Assignment Information
%   Assignment:     A10, Problem 2
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
g = 9.8 ; %Defines the gravitational constant
d = 0.75 ; %Adjustable lenght given by instructions

d_s = s_lenghts(1) ; %Scaled lenght of S
d_t = s_lenghts(2) ; %Scaled lenght of T

l_s = lenghts(1) ; %Lenght of S
l_t = lenghts(2) ; %Lenght of t


%% ____________________
%% CALCULATIONS
k_s(1) = M * g / d; %Calculates the first k
k_s(2) = k_s(1) * d_s / (l_s - d_s) ; %Calculates k_1
k_s(3) = k_s(2) ; %Calculates k_2
k_s(4) = k_s(1) * d_t / (l_t - d_t) ; %Calculates k_3


%% ____________________
%% TEXT DISPLAYS



%% ____________________
%% RESULTS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



