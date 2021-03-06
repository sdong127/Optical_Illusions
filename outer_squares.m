%% outer_squares.m
%% written on March 5, 2021
%% by Haley Seo and Shirley Dong
%% This script contains the squares for the outer border of moving squares
dark_green = zeros(100,100,3);
dark_green(:,:,1) = 0.3765;
dark_green(:,:,2) = 0.7882;
dark_green(:,:,3) = 0.5647;

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
%imshow(square9)
