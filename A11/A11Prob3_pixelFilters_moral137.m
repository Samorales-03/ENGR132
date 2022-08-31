function A11Prob3_pixelFilters_moral137()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Given a pixel data array, computes three different filters
%
% Function Call
%A11Prob3_pixelFilters_moral137()
%
% Input Arguments
%None 
%
% Output Arguments
% None
%
% Assignment Information
%   Assignment:     A11, Problem 3
%   Author:         Samuel Morales, moral137@purdue.edu
%   Team ID:        024-19
%   Academic Integrity:
%     [] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
pixels_data = readmatrix("Data_pixels.csv", "NumHeaderLines", 0);

[row col] = size(pixels_data); %Gets the size of the image
pixels_data_filter1 = pixels_data; %Creates a base array for filter 1
pixels_data_filter2 = pixels_data; %Creates a base array for filter 2
pixels_data_filter3 = pixels_data; %Creates a base array for filter 3

%% ____________________
%% CALCULATIONS

%%First filter 
for ind_y1 = 2:1:row - 1 %The first movement is horizontal, so the outer loop is vertical
    for ind_x1 = 2:1: col - 1 %The first movement is horizontal, so the inner loop is horizontal
        pixels_imp1 = pixels_data_filter1(ind_y1 - 1 : ind_y1 + 1 , ind_x1 -1 : ind_x1 +1); %Gets important pixels
        pixels_data_filter1(ind_y1, ind_x1) = median(pixels_imp1, "All"); %Calculates the median of all the surrounding pixels and assigns it to the pixel
    end
end

%%Second filter
%%The thought process is the same, only comments for the order will be
%%provided
for ind_y2 = row - 1:-1: 2 %Starts from last row
    for ind_x2 = col - 1: -1: 2 
        pixels_imp2 = pixels_data_filter2(ind_y2 - 1: ind_y2 +1 , ind_x2 - 1 : ind_x2 + 1);
        pixels_data_filter2(ind_y2, ind_x2) = median(pixels_imp2, "All");
    end
end    


%%Third Filter

for ind_x3 = 2:1:col - 1 %Since the vertical movement comes first, the outer loop moves the program horizontally
    for ind_y3 = 2:1:row -1
        pixels_imp3 = pixels_data_filter3(ind_y3 - 1 : ind_y3 + 1, ind_x3 -1 : ind_x3 + 1);
        pixels_data_filter3(ind_y3, ind_x3) = median(pixels_imp3, "All");
    end
end



%% ____________________
%% FORMATTED TEXT/FIGURE DISPLAYS
%%Plots everything
figure(1)

subplot(2,2,1);
heatmap(pixels_data,"Title", "Original image");

subplot(2,2,2);
heatmap(pixels_data_filter2, "Title", "Filter 2");

subplot(2,2,3);
heatmap(pixels_data_filter1,"Title", "Filter 1");

subplot(2,2,4)
heatmap(pixels_data_filter3, "Title", "Filter 3");

sgtitle("Different filters applied to the same image.")



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



