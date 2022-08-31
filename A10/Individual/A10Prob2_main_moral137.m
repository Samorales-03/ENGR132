function A10Prob2_main_moral137()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Calculates center of mass, scaled lenght and spring constants for a stand
%up helper
%
% Function Call
% A10Prob2_main_moral137
%
% Input Arguments
%NONE
%
% Output Arguments
% NONE
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
lenghts = [0.421 0.432 0.8] ; %Lenght given by instructions (meters)
masses = [3.1 7.39 24.13] ; %Mass values given by instructions (kg)
center_of_mass = [0.55*lenghts(1) 0.59*lenghts(2) 0.41*lenghts(3)] ; %Center of mass lenghts given by instructions (m)

%% ____________________
%% CALCULATIONS
[s_lenghts M] = A10Prob2_lengths_moral137(masses, lenghts, center_of_mass) ; %Runs first function to get total mass M in kg and scaled lenghts in m
k_s = A10Prob2_springs_moral137(M, lenghts, s_lenghts) ; %Runs second function to get the springs constants in N/m

%% ____________________
%% TEXT DISPLAYS
%Displays results
fprintf("The four springs constants (in N/m) are :\n")
fprintf(" k = %.2f\n", k_s(1));
fprintf(" k_1 = %.2f\n", k_s(2));
fprintf(" k_2 = %.2f\n", k_s(3));
fprintf(" k_3 = %.2f\n", k_s(4));


%% ____________________
%% RESULTS
%The four springs constants (in N/m) are :
% k = 452.37
% k_1 = 10774.14
% k_2 = 10774.14
% k_3 = 2102.48


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



