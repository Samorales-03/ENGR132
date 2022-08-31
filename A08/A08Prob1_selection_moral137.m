%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for MATLAB Skills - Selection Structure
%
% Author:   Samuel Morales, moral137@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% SELECTION STRUCTURE
A = input('Please Enter an integer -> ');

if abs(A) ~= floor(abs(A))
    fprintf("Please enter an integer!\n")
elseif A <= -22 | A >=370
    A = A / 10;
    fprintf("A is now : %.f\n", A)
elseif A <= 18;
    A = A + 102;
    fprintf("A is now : %.f\n", A)
elseif A > 109 & A <= 123
    A = A + 115;
    fprintf("A is now : %.f\n", A)
elseif A > 105 & A <=128
    A = A + 146;
    fprintf("A is now : %.f\n", A)
else 
    fprintf('A is invalid.\n')
end
    




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.