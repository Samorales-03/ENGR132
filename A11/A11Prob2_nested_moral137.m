%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for A11 Problem 2: MATLAB Skills - Nested Loops
%
% Assignment Information
%   Assignment:     A11, Problem 2
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FLOWCHART TRANSLATION
a = 0;
b = 7;

counter_outer = 0 ;
total_iterations = 0 ;

sum_ab = a + b ;

while sum_ab < 1000
    counter_outer = counter_outer + 1; 
    a = a + 1 ;
    
    for c = 3 : 4 : 15 
        a = 2*a + c;
        b = 9*c;
        sum_ab = a + b;
        total_iterations = total_iterations + 1;
    end
end 

fprintf("The number of outer loop interations is: %.0f iterations.\n", counter_outer);
fprintf("The total number of iterations is: %.0f iterations.\n", total_iterations);
fprintf("The final value of sum_ab is: %.0f.\n", sum_ab);




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.