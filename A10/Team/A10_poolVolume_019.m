function A10_poolVolume_019()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Ask the user for a given pool, collect the data for the measures of the
% pool and return the volume of the pool with the given measures
%
% Function Call
% This is the main function
%
% Input Arguments
% No input arguments since is the main function
%
% Output Arguments
%No output arguments since is the main function
% Assignment Information
%   Assignment:     A10, Problem 1
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [x] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Victoria Boltasseva, vboltass@purdue.edu
%                          Caterina Oliveiro, coliveri@purdue.edu
%                           Ragan Redding, rredding@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
pool_type = input("Please enter the pool of your choice -> ", 's');
all_data_lenghts = readmatrix("Data_manufacturer_testDims.csv", "NumHeaderLines", 5);


%% ____________________
%% CALCULATIONS
if pool_type == "Standard" | pool_type == "Ramp" |  pool_type == "Round" |  pool_type == "Oval" %Checks if input is correct
    if pool_type == "Standard" %Checks if the pool type is standard
        %Assigns the correct meassures from the given data
        l_1 = all_data_lenghts(1,2) ; 
        l_2 = all_data_lenghts(1,3) ;
        d_s = all_data_lenghts(1,4) ; 
        d_d = all_data_lenghts(1,5) ; 
        volume_pool = A10_poolStandard_moral137(l_1,l_2, d_s, d_d); %Applies the function
    elseif pool_type == "Ramp" %Checks if input is ramp
        %Assigns the correct meassures from the given data
        l_1 = all_data_lenghts(2,2) ; 
        l_2 = all_data_lenghts(2,3) ;
        d_s = all_data_lenghts(2,4) ; 
        d_d = all_data_lenghts(2,5) ; 
        volume_pool = A10_poolRamp_coliveri(l_1, l_2, d_s, d_d); %Applies the function
    elseif pool_type == "Round" %Checks if inout is ramp
        %Assigns the correct meassures from the given data
        l_1 = all_data_lenghts(3,2) ; 
        l_2 = all_data_lenghts(3,3) ;
        d_s = all_data_lenghts(3,4) ; 
        d_d = all_data_lenghts(3,5) ; 
        volume_pool = A10_poolRound_vboltass(l_1,l_2,d_s,d_d) ; %Applies the function
    elseif pool_type == "Oval" %Checks if input is oval
        %Assigns the correct meassures from the given data
        l_1 = all_data_lenghts(4,2) ; 
        l_2 = all_data_lenghts(4,3) ;
        d_s = all_data_lenghts(4,4) ; 
        d_d = all_data_lenghts(4,5) ; 
        volume_pool = A10_poolOval_rredding(l_1,l_2,d_s,d_d) ; %Applies the function
    end
 fprintf("The volume of %s is : %.2f gallons.\n", pool_type, volume_pool); 
else %If inputs are not correct, print error message
    fprintf("Please enter a valid name of the pool.\nRemember the available pool types are: Standard, Ramp, Round and Oval (Capital letters matter).\n") ;
end

   

%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS


%% ____________________
%% RESULTS

% -- Standard Pool
% The volume of Standard is : 254354.00 gallons.

% -- Ramp Pool
% The volume of Ramp is : 235651.50 gallons.

% -- Round Pool
% The volume of Round is : 293484.40 gallons.

% -- Oval Pool (only used by teams with 4 members)
% The volume of Oval is : 263225.25 gallons.


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



