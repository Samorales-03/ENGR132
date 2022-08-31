function [pow_generated_at_given] = A12Prob3_panelOutput_moral137(given_peak_sun)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Takes data from solar panels, creates a model and then given a peak sun
% hour predict what power will be generated
%
% Function Call
%[pow_generated_at_given] = A12Prob3_panelOutput_moral137(given_peak_sun)
%
% Input Arguments
% given_peak_sun: the peak sun hour desired
% Output Arguments
% pow_generated_at_given: the power generated at the given peak sun hour
%
% Assignment Information
%   Assignment:     A12, Problem 3
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
data_solar = readmatrix("Data_panelX5_output_measurements.csv","NumHeaderLines",1);

peak_hours = data_solar(:,1);
panel_output = data_solar(:,2);
peak_hours = peak_hours(~isnan(peak_hours));
peak_hours = peak_hours(~isnan(panel_output));
panel_output = panel_output(~isnan(peak_hours));
panel_output = panel_output(~isnan(panel_output));


%% ____________________
%% REGRESSION CALCULATIONS
%Generating the least squares regression
coef_linear = polyfit(peak_hours, panel_output,1); %Creates model from polyfit

a_solar_coef = coef_linear(1); %gets slope
b_solar_coef = coef_linear(2); %gets intercepet

%Calculating SSE, SST and R^2

modeled_solar = a_solar_coef * peak_hours + b_solar_coef; %Calculates f(x)

squared_errors = (modeled_solar - panel_output).^2; %Calcualtes (f(x)-y)^2 for each value
sse = sum(squared_errors,"All"); %Sums the previous values to get SSE

average_panel_output = mean(panel_output,"All"); %Computes the mean of the sample
squared_deviation = (panel_output - average_panel_output).^2 ; %Calculates (y-ybar)^2
sst = sum(squared_deviation,"All"); %Sums all the previous values to get SST

r2 = 1 - sse / sst; %Uses formula to calcualte r^2


%% ____________________
%% REGRESSION TEXT & FIGURE DISPLAYS
fprintf("The linear model for the data is: Panel output (kwh) = %.2f(Peak Sun Hour) + (%.2f)\n", a_solar_coef, b_solar_coef)
fprintf("This model has a SSE of %.2f\n", sse);
fprintf("This model has a SST of %.2f\n", sst)
fprintf("This model has a r^2 of %.2f\n", r2)

figure(1)
plot(peak_hours, panel_output, "bo", "MarkerSize",3);
title("Solar Panel Output across peak hours");
xlabel("Peak Hours");
ylabel("Panel Output (kWh)")
grid on
hold on
plot(peak_hours,modeled_solar,"k");
legend("Data points","Linear model", "Location","northwest");

%% ____________________
%% PREDICTION CALCULATIONS AND DISPLAY
pow_generated_at_given = a_solar_coef* given_peak_sun + b_solar_coef; %Computes the given hour usen the model
fprintf("\nAt %.1f hours, the predicted output is: %.2f kWh.\n", given_peak_sun, pow_generated_at_given);

if pow_generated_at_given <= 0 %If the power generated is less than 0
    fprintf("These results might not be a good model of the situation, a negative output does not make any sense. Please do not use this results\n")
elseif given_peak_sun > max(peak_hours) || given_peak_sun < min(peak_hours) %If the hour given is outside of the data sample
    fprintf("These results are out of range for the given data. The model might not be accurate outside this range. Please analyze this result before using it.\n")
end


%% ____________________
%% RESULTS
%%Results for 4.8
%The linear model for the data is: Panel output (kwh) = 2.72(Peak Sun Hour) + (-5.05)
%This model has a SSE of 44.38
%This model has a SST of 740.31
%This model has a r^2 of 0.94

%At 4.8 hours, the predicted output is: 8.02 kWh.

%%Results for 7.5
%The linear model for the data is: Panel output (kwh) = 2.72(Peak Sun Hour) + (-5.05)
%This model has a SSE of 44.38
%This model has a SST of 740.31
%This model has a r^2 of 0.94

%At 7.5 hours, the predicted output is: 15.37 kWh.
%These results are out of range for the given data. The model might not be accurate outside this range. Please analyze this result before using it.


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



