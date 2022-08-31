%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for MATLAB Skills - WHILE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% WHILE LOOP
A = 40;
B = 230;
counter = 0 ;
while A < 85 & B >75
    A = A + 8 ;
    B = B -17 ;
    C = B * A ;
    counter = counter + 1 ;
end
fprintf('The number of iterations where : %.f', counter)
fprintf('\nThe final number C is : %.f\n', C)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.