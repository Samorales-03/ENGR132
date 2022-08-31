%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Given a booking number and a class of seat, assign the distribution of the
%passengers depending on how many people have the same reservation
%
% Assignment Information
%   Assignment:     A08, Problem 3
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Victoria Boltesseva, vboltass@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
booking_numb = readmatrix('Data_booking_numbers.txt', 'NumHeaderLines',0); %Imports data
pass_class = input('Please input you travel class (1 is for premium and 2 for basic) -> '); %Requests the user class
pass_numb = input('\nPlease input your booking number -> '); %Requests the user booking number 

numb_pass = numel(find(booking_numb == pass_numb)); %Calculates the number of passangers with one specific booking number
%% ____________________
%% CALCULATIONS & DISPLAYS
if pass_class ~= 1 & pass_class ~= 2 %Check if the class is correctly entered (this comes before anything else since there are cases where we do not care about the class)
    fprintf('\nInvalid economy class\n')
elseif numb_pass == 0 %Check if booking number is correctly entered
    fprintf('\nInvalid booking number\n') 
elseif pass_class == 1 & numb_pass == 1 %Check if it is 1 passanger and premium
    fprintf('\nThe booking %.f is assigned a window seat\n', pass_numb)
elseif pass_class == 2 & numb_pass == 1 %Check if it is 1 passanger and basic
    fprintf('\nThe booking %.f is assigned a aisle seat\n', pass_numb)
elseif (numb_pass == 2 | numb_pass == 3) %Check if it is 2 or 3 passengers
    fprintf('\nThe booking %.f is assigned one side row\n', pass_numb)
elseif pass_class == 1 & numb_pass == 4 %Check if it is 4 passengers and premium
    fprintf('\nThe booking %.f is assigned one side row plus aisle seat on opposite side\n', pass_numb)
elseif pass_class == 2 & numb_pass == 4 %Check if it is 4 passengers and basic
    fprintf('\nThe booking %.f is assigned one side row plus aisle seat in front of full side\n', pass_numb)
elseif numb_pass == 6 | numb_pass == 5 %Check if it is 5 or 6 passengers
    fprintf('\nThe booking %.f is assigned one full row\n', pass_numb)
end


%% ____________________
%% RESULTS

% Test Case 1
% The booking 16209315 is assigned one side row

% Test Case 2
% The booking 15088033 is assigned a window seat

% Test Case 3
% The booking 15529040 is assigned a aisle seat

% Test Case 4
% Invalid booking number

% Test Case 5
% The booking 17221902 is assigned one full row

% Test Case 6
% The booking 20333663 is assigned one side row

% Test Case 7
% The booking 11976972 is assigned one side row plus aisle seat in front of full side

% Test Case 8
% The booking 14313145 is assigned a aisle seat


%% ____________________
%% ANALYSIS

% -- Q1. All but one case is tested. No case with an invalid class number
% was checked, input of class number = 3 and booking = 17221902 should be enough to check 
%


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.