%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Builds an excersise planner for given needs of user
%
% Assignment Information
%   Assignment:     A09, Problem 2
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
clc;clear;

days_of_training = input("How many days do you want to excersise? (please enter a multiple of 7 and an integer) -> ");
sports_day = input("What day a week do you want to do sports day? (Monday is 1, Tuesday 2, ...) ->");
rest_day = input("What day a week do you want to rest? (Monday is 1, Tuesday 2, ...) ->");

odd_numb_time = 30 ; %Time trained in odd number of days
even_numb_time = 45 ; %Time trained in even number of days
sports_numb_time = 90 ; %Time trained in sports days
rest_numb_time = 0 ; %Time trained in rest days
%% Checking correct inputs

while mod(days_of_training,7) ~= 0 | floor(days_of_training) ~= days_of_training %Checks correct number of days
    fprintf("You number of days are not a multiple of 7 or an integer!");
    days_of_training = input("\nPlease input a new number of days (multipe of 7) -> ");
end

while sports_day == rest_day %Checks that sport and rest day do not match
    fprintf("You cannot do a sport and rest at the same time!")
    sports_day = input("\nPlease re-enter your sports day ->");
    rest_day = input("\nPlease re-enter your rest day ->");
end


    
%% ____________________
%% CALCULATIONS

training_array = [1:days_of_training]; %Generate the vector we are going to work with, it does not matter which initial values it has
for a = 1:2:days_of_training %Set the 30 min workout session every odd number of days
    training_array(a) = odd_numb_time;
end

for b = 2:2:days_of_training %Set the 45 min workout session every even number of days
    training_array(b) = even_numb_time;
end

for c = rest_day:7:days_of_training %Sets the rest day (will override one of the previous days)
    training_array(c) = rest_numb_time;
end

for d = sports_day:14:days_of_training %Sets sports day (will override one of the previous days)
    training_array(d) = sports_numb_time;
end
schedule = training_array(1:7); %First week of the program
for e = 8:7:days_of_training-6 %Concatenates the weeks 
    week = training_array(e : e+6);
    schedule = [schedule ; week];
end
%% ____________________
%% FORMATTED TEXT DISPLAY
fprintf("  Mon  Tue  Wed   Thu  Fri  Sat  Sun\n");
disp(schedule);
%% _____ _______________
%% RESULTS
%    Mon   Tue   Wed   Thu   Fri    Sat  Sun
%    30    45    90    45    30     0    30
%    45    30    45    30    45     0    45
%    30    45    90    45    30     0    30
%    45    30    45    30    45     0    45
%    30    45    90    45    30     0    30
%    45    30    45    30    45     0    45
%    30    45    90    45    30     0    30
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







