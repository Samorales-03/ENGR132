%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - Plots
%
% Assignment Information
%   Assignment:     A06, Problem 1
%   Author:         Samuel Morales, moral37@purdue.edu
%   Team ID:        024-##
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
clear
clc
x = [31, 28, 32, 37, 39, 35, 45, 47, 46, 42, 46]; %Cost in US Dollars
y1 = [477, 433, 378, 338, 332, 291, 240, 219, 217, 169, 167]; %Area of y1 in square meters
y2 = [230, 200, 179, 166, 159, 143, 135, 110, 103, 87, 78]; %Area of y2 in square meters


%% ____________________
%% FIGURE 1
figure(1)
plot(x,y1, 'ro')
    title("Cost against Area")
    xlabel("Cost (US Dollars)")
    ylabel("Area (square  meters)")
grid on
%% ____________________
%% FIGURE 2
figure(2)
sgtitle('Cost of different Areas')
subplot(2,1,1)
    plot(x,y1,'ro')
        title("y1 against cost")
        xlabel("Cost (US Dollars)")
        ylabel("Area (square meters)")
grid on
subplot(2,1,2)
    plot(x,y2, 'bo')
        title("y2 against cost")
        xlabel("Cost (US Dollars)")
        ylabel("Area (square meters)")
grid on
%% ____________________
%% FIGURE 3
figure(3)
plot(x,y1,'ro')
    title("Area against cost")
    xlabel("Cost (US Dollar)")
    ylabel("Area (square meters)")
hold on
grid on
plot(x,y2,'b*')
legend('y1','y2')
hold off
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.





