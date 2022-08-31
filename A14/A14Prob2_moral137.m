%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Template for A14 - Problem 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
all_data = readmatrix("Data_A14Prob1.csv","NumHeaderLines",2);

%data set 1
x_val_1 = all_data(:,1);
y_val_1 = all_data(:,2);

%data set 2
x_val_2 = all_data(:,3);
y_val_2 = all_data(:,4);


%% ____________________
%% Data Linearization Calculations

%data set 1
x_1_lin = x_val_1;
y_1_lin = log10(y_val_1);

coeff_1 = polyfit(x_1_lin, y_1_lin,1);

y_1_model = coeff_1(1) * x_1_lin + coeff_1(2);
%data set 2
x_2_lin = log10(x_val_2);
y_2_lin = log10(y_val_2);

coeff_2 = polyfit(x_2_lin,y_2_lin,1);

y_2_model = coeff_2(1) * x_2_lin + coeff_2(2);

%% ____________________
%% Text Display
fprintf("Data set 1 Linearization\n");
fprintf("The function type is: Exponential\n");
fprintf("The model is: log(y) = %.4f x + %.1f\n",coeff_1(1), coeff_1(2));
fprintf("\nData set 2 Linearization\n");
fprintf("The function type is: Power\n");
fprintf("The model is: log(y) = %.4f log(x) + %.1f\n",coeff_2(1), coeff_2(2));

%% ____________________
%% Figure Display
figure(1)
plot(x_1_lin,y_1_lin,"ko");
xlabel("X");
ylabel("log(Y)");
title("Linearized model of Data set 1");
grid on
hold on
plot(x_1_lin,y_1_model,"b");
legend("Data points","Model","Location","northwest");

figure(2)
plot(x_2_lin,y_2_lin,"ko");
xlabel("log(X)");
ylabel("log(Y)");
title("Linearized model of Data set 2");
grid on
hold on
plot(x_2_lin,y_2_model,"b");
legend("Data points","Model","Location","northwest");

%% ____________________
%% RESULTS



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







