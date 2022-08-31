%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for A11 Problem 1: MATLAB Skills - Removing Loops
%
% Assignment Information
%   Assignment:     A11, Problem 1
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% SOLUTION WITH NO LOOP
vec = [-20, 11, -33, -13, -17, -24, 25, 30];
newvec_noLoop = zeros(1,numel(vec));  % pre-allocate newvec with zeros

newvec_noLoop(vec > -27 & vec < -5) = (2 * vec(vec > -27 & vec < -5).^2 + 4)./ ( 2 * vec(vec > -27 & vec < -5).^2 + 2 * vec(vec > -27 & vec < -5));
newvec_noLoop(vec <= -27 | vec >= -5) = (7 ./ (vec(vec <= -27 | vec >= -5 ) - 3)) ./ ( 8 * vec(vec <= -27 | vec >= -5) .^ 2); 


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.