%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Template for A14 - Problem 1
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
%% FORMATTED FIGURES

% Formatted Figure 1 - DATA SET 1
figure(1)

subplot(2,2,1)
    plot(x_val_1,y_val_1,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (Linear)");
    grid on

subplot(2,2,2)
    semilogx(x_val_1,y_val_1,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (Semilog in X)");
    grid on

subplot(2,2,3)
    semilogy(x_val_1,y_val_1,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (Semilog in Y)");
    grid on
    
subplot(2,2,4)
    loglog(x_val_1,y_val_1,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (loglog)");
    grid on
 sgtitle("Different Scales for Data set 1")



% Formatted Figure 2 - DATA SET 2
figure(2)

subplot(2,2,1)
    plot(x_val_2,y_val_2,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (Linear)");
    grid on

subplot(2,2,2)
    semilogx(x_val_2,y_val_2,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (Semilog in X)");
    grid on

subplot(2,2,3)
    semilogy(x_val_2,y_val_2,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (Semilog in Y)");
    grid on
    
subplot(2,2,4)
    loglog(x_val_2,y_val_2,"ko")
    xlabel("X");
    ylabel("Y");
    title("X vs Y (loglog)");
    grid on
 sgtitle("Different Scales for Data set 2")



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







