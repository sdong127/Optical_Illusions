%% moving_squares_illusion.m
%% written on March 4, 2021
%% by Haley Seo and Shirley Dong
%% This script creates the moving squares illusion

%creating the background grid
dark_green = zeros(10,10,3);
dark_green(:,:,1)=0.3765;
dark_green(:,:,2)=0.7882;
dark_green(:,:,3)=0.5647;

lt_green = zeros(10,10,3);
lt_green(:,:,1) = 0.5765;
lt_green(:,:,2) = 0.8745;
lt_green(:,:,3) = 0.2431;

% 	60c990 dark green rgb(96, 201, 144)
% 	93DF3E light green rgb(147, 223, 62)
%   17x17 squares

first_row = [lt_green];
for ii = 1:16
    if mod(ii,2) == 0
        first_row = [first_row lt_green];
    else
        first_row = [first_row dark_green];
    end
end
% imshow(first_row)

second_row = [dark_green];
for ii = 1:16
    if mod(ii,2) == 0
        second_row = [second_row dark_green];
    else
        second_row = [second_row lt_green];
    end
end
% imshow(second_row)


square1 = [lt_green];
%square 1 corners
%top left box
square1(1:3,1:3,1) = 255;
square1(1:3,1:3,2) = 255;
square1(1:3,1:3,3) = 255;
%top right box
square1(1:3,8:end,1) = 255;
square1(1:3,8:end,2) = 0;
square1(1:3,8:end,3) = 0;
%bottom left box
square1(8:end, 1:3,1) = 255;
square1(8:end, 1:3,2) = 0;
square1(8:end, 1:3,3) = 0;
%bottom right box
square1(8:end, 8:end,1) = 255;
square1(8:end, 8:end,2) = 255;
square1(8:end, 8:end,3) = 255;
%flooding the center back to light green
square1(2:9, 2:9, 1) =0.5765;
square1(2:9, 2:9, 2) = 0.8745;
square1(2:9, 2:9, 3) = 0.2431;
imshow(square1)



        
        