%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Classifies a data of landslides and performs different analysis to it.
%
% Assignment Information
%   Assignment:     A06, Problem 4
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

landslide_data = readmatrix('Data_global_landslide.csv', 'NumHeaderLines',1); %Imports data

year = landslide_data(:,1); %Separates the year data
category = landslide_data(:,2); %Separates the landslide category data
trigger = landslide_data(:,3); %Separates the landslide trigger data
size = landslide_data(:,4); %Separates the landslide size data
fatality = landslide_data(:,5); %Separates the fatality count data
injury = landslide_data(:,6); %Separates the injury count data
longitude = landslide_data(:,7); %Separates the longitude data
latitude = landslide_data(:,8); %Separates the latitudde data

%% ____________________
%% CALCULATIONS
q1 = numel(find((category == 2 & trigger ~= 30) | (trigger == 30 & category ~= 2))); %Finds the number of mudslides that where not triggered by a downpour or the landslides triggered by downpor that are not mudslides
q2 = mean(latitude(category == 3)); %Calculates the mean latitude of snowslides
q3 = numel(find( fatality > 50 & xor(latitude > 0, longitude < 0))); %Finds the number of landslides that had a fatality rate grater than 50 that had a latitude greater than 0 or longitude less than 0 but not both
q4 = numel(find( (category == 1 | category == 2) & (trigger == 40) & (size >= 200) & (latitude > 0))); % Find the number of landslides or mudslides that were triggered by snow fall or melt whose size was at least medium and ocurred above the equator
q5_part1 = year(size == 200 & category == 3 & longitude < 0 & (latitude > 19.5 & latitude < 64.86)); % Find the years in which a medium snow avalanche occured in the USA
q5_part2= numel(q5_part1); %Finds the amounts of cases of the previous question

%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf('The number of mudslides that where not triggered by a downpour or the landslides triggered by downpour that are not mudslides is : %.0f\n', q1)
fprintf('The mean latitude of snowslides is : %.2f degrees\n', q2)
fprintf('The number of landslides that had a fatality rate grater than 50 that had a latitude greater than 0 or longitude less than 0 but not both is : %.0f\n', q3)
fprintf('the number of landslides or mudslides that were triggered by snow fall or melt whose size was at least medium and ocurred above the equator is : %.0f\n', q4)
fprintf('The years in which a medium snow avalanche occured in the USA are/is : %.0f\n', q5_part1)
fprintf('The amount of times a medium snow avalanche occured in the USA are : %.0f\n', q5_part2)


%% ____________________
%% RESULTS
% The mean latitude of snowslides is : 31.99 degrees
% The number of landslides that had a fatality rate grater than 50 that had a latitude greater than 0 or longitude less than 0 but not both is : 13
% the number of landslides or mudslides that were triggered by snow fall or melt whose size was at least medium and ocurred above the equator is : 67
% The years in which a medium snow avalanche occured in the USA are/is : 2017
% The amount of times a medium snow avalanche occured in the USA are : 1
%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.