function A12Prob2_airPollution_moral137()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%Creates a model for SF6 and CO2 pollution 
%
% Function Call
% A12Prob2_airPollution_moral137()
%
% Input Arguments
% NONE
%
% Output Arguments
% NONE
%
% Assignment Information
%   Assignment:     A12, Problem 2
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
%CO2 DATA COLLECTION
co2_data = readmatrix("Data_NOAA_ESRL_co2_trend_1980-2021.txt", "NumHeaderLines",58);
co2_years = co2_data(:,3);
co2_average_ppm = co2_data(:,5);

co2_years = co2_years(~isnan(co2_years));
co2_years = co2_years(~isnan(co2_average_ppm));
co2_average_ppm = co2_average_ppm(~isnan(co2_years));
co2_average_ppm = co2_average_ppm(~isnan(co2_average_ppm));
%SF6 DATA COLLECTION

sf6_data = readmatrix("Data_NOAA_ESRL_sf6_trend_1997-2021.txt","NumHeaderLines",61);
sf6_years = sf6_data(:,3);
sf6_average_ppt  = sf6_data(:,4);


sf6_years = sf6_years(~isnan(sf6_average_ppt));
sf6_years = sf6_years(~isnan(sf6_years));
sf6_average_ppt = sf6_average_ppt(~isnan(sf6_average_ppt));
sf6_average_ppt = sf6_average_ppt(~isnan(sf6_years));

%% ____________________
%% CALCULATIONS

%Generating the fit for CO2
[coef_co2] = polyfit(co2_years, co2_average_ppm,1); %uses polyfit to model the data
a_co2 = coef_co2(1); %gets the slope
b_co2 = coef_co2(2); %gets the intercept

%Generating the fit for SF6
[coef_sf6] = polyfit(sf6_years, sf6_average_ppt,1); %uses polyfit to model the data
a_sf6 = coef_sf6(1); %gets the slope
b_sf6 = coef_sf6(2); %gets the intercept

%Calculating SSE, SST and R^2 for CO2

modeled_co2 = a_co2 .* co2_years + b_co2; %generates f(x)

squared_errors_co2 = (modeled_co2 - co2_average_ppm).^2; %Computes each (f(x)-y)^2
sse_co2 = sum(squared_errors_co2,"All"); %Sums all the previous values to get SSE

average_co2 = mean(co2_average_ppm,"All"); %Gets the average of the date
squared_deviation_co2 = (co2_average_ppm - average_co2).^2; %Computes each (y - ybar)^2
sst_co2 = sum(squared_deviation_co2,"All"); %Sums all the previous values to get SSt

r2_co2 = 1 - sse_co2 / sst_co2 ; %Uses r^2 formula


%Calculating SSE, SST and R^2 SF6 (Same logic as previous)

modeled_sf6 = a_sf6 .* sf6_years + b_sf6;

squared_errors_sf6 = (modeled_sf6 - sf6_average_ppt).^2;
sse_sf6 = sum(squared_errors_sf6,"All");

average_sf6 = mean(sf6_average_ppt,"All");
squared_deviation_sf6 = (sf6_average_ppt - average_sf6).^2;
sst_sf6 = sum(squared_deviation_sf6,"All");

r2_sf6 = 1 - sse_sf6 / sst_sf6 ;
%% ____________________
%% PREDICTION CALCULATIONS
prediction_years_co2 = [1950 2000 2050]; %Generates array of the given years
prediction_value_co2 = a_co2 .* prediction_years_co2 + b_co2; %Generates the prediction value



%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("For the CO_2 model:\n");
fprintf("The equation of the line is Average CO2 (ppm) = %.2f(Decimal year) + (%.2f)\n", a_co2, b_co2);
fprintf("The SSE is %.2f\n", sse_co2);
fprintf("The SST is %.2f\n", sst_co2);
fprintf("The r^2 value is %.3f\n", r2_co2);

fprintf("\nFor the SF_6 model:\n");
fprintf("The equation of the line is Average SF6 (ppt) = %.2f(Decimal year) + (%.2f)\n", a_sf6, b_sf6);
fprintf("The SSE is %.2f\n", sse_sf6);
fprintf("The SST is %.2f\n", sst_sf6);
fprintf("The r^2 value is %.3f\n", r2_sf6);

figure(1)

plot(co2_years, co2_average_ppm, "bo", "MarkerSize",2);
ylabel("Average CO_2 (ppm)");
xlabel("Year");
title("Average CO_2 over the years");
grid on
hold on
plot(co2_years, modeled_co2,"k");
legend("Data points","Linear trend");

figure(2)
plot(sf6_years, sf6_average_ppt, "bo", "MarkerSize",2);
ylabel("Average SF_6 (ppt)");
xlabel("Year");
title("Average SF_6 over the years");
grid on
hold on
plot(sf6_years, modeled_sf6,"k");
legend("Data points","Linear trend");
%% ____________________
%% RESULTS



%% ____________________
%% ANALYSIS

%% -- Q1
% The prediction is very accurate, both r^2 are about 0.99, meaning that
% the modeled created can explain 99% of the data and its variations.
% Because of this, the model is a very good prediction and approximation of
% the real world

%% -- Q2
% The model of SF_6 is a better prediction of the real life because it has
% an r^2 value greater than the one from CO_2, this means that the
% percentage of data that the SF_6 model can correctly predict is higher
% (0.991 vs 0.990).


%% -- Q3
% The CO_2 levels predicted are the following:
% For 1950: 279.47 ppm
% For 2000: 370.65 ppm
% For 2050 461.84 ppm


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



