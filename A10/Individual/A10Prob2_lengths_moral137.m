function [s_lenghts  M] = A10Prob2_lengths_moral137(masses , lenghts , l_c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Given the mass of each sections, length and lenght to center of mass,
% calculate the scaled lenghts and the total mass of the system
%
% Function Call
% A10Prob2_lenghts_moral137
%
% Input Arguments
% m as a vector that contains all the mass of the individual sections
% l as a vector that contains all the lenghts of the individuall sections
% l_c as a vector that contains all the lenghts of the center of mass
%
% Output Arguments
% s_lenghts as a vector that contains the scaled lenghts
% M as the total mass
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
l_s = lenghts(1);
l_t = lenghts(2);
l_h = lenghts(3);

m_s = masses(1) ; 
m_t = masses(2) ;
m_h = masses(3) ; 

l_cs = l_c(1) ; 
l_ct = l_c(2) ;
l_ch = l_c(3) ; 

%% ____________________
%% CALCULATIONS
M = m_s + m_t + m_h ; %Computes total mass

s_lenghts(1) = 1 / M *(m_t * l_s + m_h * l_s + m_s * l_cs) ; %Calculates the scaled lenght of S
s_lenghts(2) = 1 / M * (m_h * l_t + m_t * l_ct) ; %Calculates the scaled lenght of T
s_lenghts(3) = 1 / M * (m_h * l_ch) ; %Calculates the scaled lenght of H



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



