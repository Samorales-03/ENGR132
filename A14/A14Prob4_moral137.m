%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Model a non-linear regression
%
% Assignment Information
%   Assignment:     A14, Problem 4
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
all_data = readmatrix("Data_problem4.csv","NumHeaderLines",1);

x_val = all_data(:,1);
y_val = all_data(:,2);


%% ____________________
%% PLOTS WITH AXIS SCALING
figure(1)
subplot(2,2,1)
    plot(x_val,y_val,"ko");
    xlabel("X");
    ylabel("Y");
    title("X vs Y");
    grid on
subplot(2,2,2)
    semilogx(x_val,y_val,"ko");
    xlabel("X");
    ylabel("Y");
    title("X vs Y (semilog on X)");
    grid on
subplot(2,2,3)
    semilogy(x_val,y_val,"ko");
    xlabel("X");
    ylabel("Y");
    title("X vs Y (semilog Y)");
    grid on
subplot(2,2,4)
    loglog(x_val,y_val,"ko");
    xlabel("X");
    ylabel("Y");
    title("X vs Y (loglog)");
    grid on
sgtitle("X vs Y")
%% ____________________
%% LINEARIZED MODEL

%%% DATA LINEARIZATION & MODEL

x_lin = log10(x_val); %scales the x axis
y_lin = log10(y_val); %scales the y axis

coeff = polyfit(x_lin,y_lin,1); %creates the linear fit with the scaled axis

m_log = coeff(1); %gets the slope of the model
b_log = coeff(2); %gets the intercept of the model

y_lin_model = m_log * x_lin + b_log; %models the data with the equation

m = m_log; %converts the slope of the linearized model to the m value of the standard equation
b = 10^(b_log); %converts the intercept of the linearized model to the b value of the standard equation

y_model = b * (x_val).^(m); %models the y values using the standard equation

%%% TEXT DISPLAY
fprintf("The function type is Power\n")
fprintf("The linearized model is: y = %.2fx + %.2f\n", m_log,b_log);
fprintf("The standard equation is: y = %.2f x ^ %.2f\n",b,m);

%%% FIGURE DISPLAY
figure(2)
plot(x_lin,y_lin,"ko")
xlabel("log(x)");
ylabel("log(y)");
title("X vs Y");
hold on 
grid on
plot(x_lin,y_lin_model,"b")
legend("Data points","Model","Location","northwest");

figure(3)
plot(x_val,y_val,"ko")
xlabel("x");
ylabel("y");
title("X vs Y");
hold on 
grid on
plot(x_val,y_model,"b")
legend("Data points","Model","Location","northwest");

%% ____________________
%% DETERMINE MODEL

%%% PARAMETER IDENTIFICATION


%%% TEXT DISPLAY


%%% FIGURE DISPLAY



%% ____________________
%% ANALYSIS




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.