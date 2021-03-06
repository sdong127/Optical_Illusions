%% outer_squares.m
%% written on March 5, 2021
%% by Haley Seo and Shirley Dong
%% This script contains the squares for the outer border of moving squares
dark_green = zeros(100,100,3);
dark_green(:,:,1) = 0.3765;
dark_green(:,:,2) = 0.7882;
dark_green(:,:,3) = 0.5647;

lt_green = zeros(100,100,3);
lt_green(:,:,1) = 0.5765;
lt_green(:,:,2) = 0.8745;
lt_green(:,:,3) = 0.2431;
% light green tile

square9 = [dark_green];
%square 9 corners, white bot left, red bot right
%bottom left box
square9(81:end, 1:20,1) = 255;
square9(81:end, 1:20,2) = 255;
square9(81:end, 1:20,3) = 255;
%bottom right box
square9(81:end, 81:end,1) = 255;
square9(81:end, 81:end,2) = 0;
square9(81:end, 81:end,3) = 0;
%flooding the center back to dark green
square9(7:93, 7:93, 1) = 0.3765;
square9(7:93, 7:93, 2) = 0.7882;
square9(7:93, 7:93, 3) = 0.5647;
% imshow(square9)

square11 = fliplr(square9);
% imshow(square11)

squarelt = [lt_green]; %right bot left white
%bottom right box
squarelt(81:end, 81:end,1) = 255;
squarelt(81:end, 81:end,2) = 255;
squarelt(81:end, 81:end,3) = 255;
%flooding the center back to light green
squarelt(7:93, 7:93, 1) = 0.5765;
squarelt(7:93, 7:93, 2) = 0.8745;
squarelt(7:93, 7:93, 3) = 0.2431;
imshow(squarelt)
