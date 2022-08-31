%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Plots gate and interconnected delay data with respect to their generation
% aong with their theoretical models. Also plots the sum of both delays and
% determines the minimum delay.
%
% Assignment Information
%   Assignment:     A06, Problem 3
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
clc
clear

delay_data = readmatrix('Delay_Data.csv', 'NumHeaderLines', 1); %imports data
generation = delay_data(:,1); %separates the generation column
gate_delay = delay_data(:,2); %separates the gate delay column
intr_delay = delay_data(:,3); %separates the interconnected delay column
x_smooth = linspace(1,7,100); %Row of points for smooth plotting

%% ____________________
%% CALCULATIONS
intr_delay_smooth = 0.36 * exp(0.47 * x_smooth); %Makes a smooth array of interconnected delay using model
gate_delay_smooth = 25.41 * exp(-0.34 * x_smooth); %Makes a smooth array of gate delay using model
total_delay = gate_delay + intr_delay ; %Calculates total delay

min_delay = min(total_delay); %Determines the minimum delay

%% ____________________
%% FIGURE DISPLAY
figure(1)
plot(generation, gate_delay, 'r*')
title('Gate and Interconnected delay')
xlabel('Generation')
ylabel('Time (picoseconds)')
grid on
hold on

plot(generation, intr_delay, 'bo')
plot(x_smooth, intr_delay_smooth, 'b')
plot(x_smooth, gate_delay_smooth, 'r')
plot(generation, total_delay, 'kx')
hold off
legend('Gate delay', 'Interconnected delay', 'Model of interconnected delay', 'Model of gate delay', 'Total delay')
%% ____________________
%% TEXT DISPLAY
fprintf('The minimum total delay is %.1f (ps)\n', min_delay)


%% ____________________
%% RESULTS
% The minimum total delay is 8.5 (ps)


%% ____________________
%% ANALYSIS

% -- 1. Generation 7 has the least gate delay. The delay was meassured to
% be 2.3 picoseconds.
% 

% -- 2. The minimum total delay occurs in generation 5. This result is
% different from the one of the previous question because the  model for
% interconnected delay is exponential, so even when the gate delay is
% minimum, the interconnected delay is actually maximize in the oldest
% generation, therefore making the sum of both bigger than a medium point.
% 

% -- 3. The raw data would be more helpful when analyzing the overall
% effects of each generation, how the gate delay is getting minimized,
% while the interconnected delay is getting bigger. On the other hand, the
% models would be helpful to predict behavior, like estimating what would
% happend if a generation 8 occurs, what is to be expected based on their
% previous behavior.
% 



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.