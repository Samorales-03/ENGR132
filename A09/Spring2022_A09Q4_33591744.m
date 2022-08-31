function [out1] = Spring2022_A09Q4_33591744(in1, in2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%   Function template for MATLAB Skills - UDFs & Nested Structures
%
% Assignment Information
%   Assignment:     A09, Problem 4
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION



%% ____________________
%% CALCULATIONS
if in1 < 1 | mod(in1,1) ~= 0
    out1 = -55;
elseif in2 < 14
    out1 = -1;
else
    out1 = in1 + in2 ;
    while out1 < in1 * in2
        out1 = 2 * out1;
    end
end


%% ____________________
%% FORMATTED TEXT DISPLAYS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



