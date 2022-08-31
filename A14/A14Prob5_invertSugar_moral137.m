%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Models sucralose experiment
% Assignment Information
%   Assignment:     14, Problem 5
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
all_data = readmatrix("Data_sucroseInversion.csv","NumHeaderLines",1); %gets the data
%separates the data into vectors
time_data = all_data(:,1); 
sucrose_concentration = all_data(:,2);

%% ____________________
%% DATA on SCALED PLOTS
figure(1)

subplot(2,2,1)
    plot(time_data, sucrose_concentration,"ko");
    xlabel("Time (min)");
    ylabel("Sucrose concentration (M)");
    grid on
    title("Regular 1:1 plot");
subplot(2,2,2)
    semilogx(time_data, sucrose_concentration,"ko");
    xlabel("Time (min)");
    ylabel("Sucrose concentration (M)");
    grid on
    title("Semilog on time");
subplot(2,2,3)
    semilogy(time_data, sucrose_concentration,"ko");
    xlabel("Time (min)");
    ylabel("Sucrose concentration (M)");
    grid on
    title("Semilog on concentration");
subplot(2,2,4)
    loglog(time_data, sucrose_concentration,"ko");
    xlabel("Time (min)");
    ylabel("Sucrose concentration (M)");
    grid on
    title("loglog");
sgtitle("Different plots of time vs concentration");

%% ____________________
%% LINEARIZATION CALCULATIONS

time_lin = time_data; %linearizes the time
concentration_lin = log10(sucrose_concentration); %linearizes the concentrations

coeff_lin = polyfit(time_lin, concentration_lin, 1); %does a linear model of the linearized data

concentration_lin_model = coeff_lin(1) * time_lin + coeff_lin(2); %creates the predicted line 
%% ____________________
%% GENERAL MODEL CALCULATIONS
%moves from linearized coefficients to general coefficients
m_model = coeff_lin(1);
b_model = 10 ^ coeff_lin(2);

concentration_model = b_model * 10 .^ (m_model .* time_data);%creates the predicted curve in the general model

times = [12 36 72]; %times to be checked
calc = b_model * 10 .^ (m_model .* times); %equation to check the times
%% ____________________
%% LINEARIZATION FIGURE DISPLAY
figure(2)
plot(time_lin, concentration_lin,"bo","MarkerSize",5);
xlabel("Time (min)");
ylabel("Concentration (log M)");
title("Linearized model of concentration over time (semilog in y)");
grid on
hold on
plot(time_lin, concentration_lin_model,"k");
legend("Data points","Linearized model","Location","northeast");

%% ____________________
%% GENERAL MODEL FIGURE DISPLAY
figure(3)
plot(time_data, sucrose_concentration,"bo","MarkerSize",5);
xlabel("Time (min)");
ylabel("Concentration ( M)");
title("Standard model of concentration of sucrose over time");
grid on
hold on
plot(time_data, concentration_model,"k");
legend("Data points","Exponential model","Location","northeast");


%% ____________________
%% ALL TEXT DISPLAYS
fprintf("The data is of the form Exponential.\n");
fprintf("The linearized model is: log(y) = %.2fx + %.2f \n", coeff_lin(1),coeff_lin(2));
fprintf("The general model is: y = %.2f  * 10 ^ (%.2fx) \n", b_model, m_model);


%% ____________________
%% ANALYSIS

% -- Text displays from Command Window
%The data is of the form Exponential.
%The linearized model is: log(y) = -0.03x + -0.23 
%The general model is: y = 0.59  * 10 ^ (-0.03x) 

% -- Q1
% This result makes sense with the real world. Concentration, just like
% radiactive decay has an exponential decay form, because the more material
% we have, the more it is going to decay. Therefore, it is lgoical that we
% get an exponential form with m (the "slope") less than 0

% -- Q2
%The concentrations at the given times are: At 12 minutes 0.2866 M, at 26
%minutes 0.0684 M, and at 72 minutes 0.0080. All these results are logical,
%the last one (72 min) is out of the range of data, so we are extrapolating
%the data, this could result in wrong results. Nonetheless, given the
%nature of the model, I woud argue they are a good extrapolation.


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.