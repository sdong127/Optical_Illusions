%% moving_squares_illusion.m
%% written on March 4, 2021
%% by Haley Seo and Shirley Dong
%% This script creates the moving squares illusion

%%%%% creating the grid %%%%%
%% Haley - driver, Shirley - observer

% dark tile
dark_tile = zeros(100,100,3);
dark_r = 0.3765;
dark_g = 0.7882;
dark_b = 0.5647;
% this defaults to a dark green color for one color of the checkerboard
% background; modify the color to explore with other colors!
dark_tile(:,:,1) = dark_r;
dark_tile(:,:,2) = dark_g;
dark_tile(:,:,3) = dark_b;

% light tile
light_tile = zeros(100,100,3);
light_r = 0.5765;
light_g = 0.8745;
light_b = 0.2431;
% this defaults to a light green color for the other color of the checkerboard
% background; modify the color to explore with other colors!
light_tile(:,:,1) = light_r;
light_tile(:,:,2) = light_g;
light_tile(:,:,3) = light_b;

cross_one_r = 1;
cross_one_g = 1;
cross_one_b = 1;
% this defaults to one of the crosses at the intersections to white; modify
% the color to explore!
cross_two_r = 1;
cross_two_g = 0;
cross_two_b = 0;
% this defaults to one of the crosses at the intersections to red: modify
% the color to explore!

cross_length = 20; 
% half of the full length of the cross symbols in the intersections
cross_thick = 6; 
% thickness of the cross symbols in the intersections
%% Haley - started making the squares, Shirley - finished the squares
% design pattern for first type of square (white top left and bot right,
% red bot left and top right)
square1 = [light_tile];
% square 1 corners
% top left box
square1(1:cross_length,1:cross_length,1) = cross_one_r;
square1(1:cross_length,1:cross_length,2) = cross_one_g;
square1(1:cross_length,1:cross_length,3) = cross_one_b;
% top right box
square1(1:cross_length,end-cross_length+1:end,1) = cross_two_r;
square1(1:cross_length,end-cross_length+1:end,2) = cross_two_g;
square1(1:cross_length,end-cross_length+1:end,3) = cross_two_b;
% bottom left box
square1(end-cross_length+1:end, 1:cross_length,1) = cross_two_r;
square1(end-cross_length+1:end, 1:cross_length,2) = cross_two_g;
square1(end-cross_length+1:end, 1:cross_length,3) = cross_two_b;
% bottom right box
square1(end-cross_length+1:end, end-cross_length+1:end,1) = cross_one_r;
square1(end-cross_length+1:end, end-cross_length+1:end,2) = cross_one_g;
square1(end-cross_length+1:end, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back
square1(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
square1(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
square1(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(square1)

% design pattern for second type of square (white bot left, 
% red top left, top right, bot right)
square2 = [dark_tile];
% square 2 corners
% top left box
square2(1:cross_length,1:cross_length,1) = cross_two_r;
square2(1:cross_length,1:cross_length,2) = cross_two_g;
square2(1:cross_length,1:cross_length,3) = cross_two_b;
% top right box
square2(1:cross_length,end-cross_length+1:end,1) = cross_two_r;
square2(1:cross_length,end-cross_length+1:end,2) = cross_two_g;
square2(1:cross_length,end-cross_length+1:end,3) = cross_two_b;
% bottom left box
square2(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
square2(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
square2(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right box
square2(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
square2(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
square2(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back
square2(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = dark_r;
square2(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = dark_g;
square2(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = dark_b;
% imshow(square2)
        
% design pattern for third type of square (white top right,
% red top left, bot left, bot right)
square3 = [light_tile];
% square 3 corners
% top left box
square3(1:cross_length,1:cross_length,1) = cross_two_r;
square3(1:cross_length,1:cross_length,2) = cross_two_g;
square3(1:cross_length,1:cross_length,3) = cross_two_b;
% top right box
square3(1:cross_length,end-cross_length+1:end,1) = cross_one_r;
square3(1:cross_length,end-cross_length+1:end,2) = cross_one_g;
square3(1:cross_length,end-cross_length+1:end,3) = cross_one_b;
% bottom left box
square3(end-cross_length+1:end, 1:cross_length,1) = cross_two_r;
square3(end-cross_length+1:end, 1:cross_length,2) = cross_two_g;
square3(end-cross_length+1:end, 1:cross_length,3) = cross_two_b;
% bottom right box
square3(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
square3(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
square3(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back
square3(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
square3(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
square3(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(square3)  

% design pattern for fourth type of square (white top left and bot right,
% red top right and bot left)
square4 = [dark_tile];
% square 4 corners
% top left box
square4(1:cross_length,1:cross_length,1) = cross_one_r;
square4(1:cross_length,1:cross_length,2) = cross_one_g;
square4(1:cross_length,1:cross_length,3) = cross_one_b;
% top right box
square4(1:cross_length,end-cross_length+1:end,1) = cross_two_r;
square4(1:cross_length,end-cross_length+1:end,2) = cross_two_g;
square4(1:cross_length,end-cross_length+1:end,3) = cross_two_b;
% bottom left box
square4(end-cross_length+1:end, 1:cross_length,1) = cross_two_r;
square4(end-cross_length+1:end, 1:cross_length,2) = cross_two_g;
square4(end-cross_length+1:end, 1:cross_length,3) = cross_two_b;
% bottom right box
square4(end-cross_length+1:end, end-cross_length+1:end,1) = cross_one_r;
square4(end-cross_length+1:end, end-cross_length+1:end,2) = cross_one_g;
square4(end-cross_length+1:end, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back
square4(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = dark_r;
square4(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = dark_g;
square4(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = dark_b;
% imshow(square4)

% design pattern for fifth type of square (white top right and bot left,
% red top left and bot right)
square5 = [light_tile];
% square 5 corners
% top left box
square5(1:cross_length,1:cross_length,1) = cross_two_r;
square5(1:cross_length,1:cross_length,2) = cross_two_g;
square5(1:cross_length,1:cross_length,3) = cross_two_b;
% top right box
square5(1:cross_length,end-cross_length+1:end,1) = cross_one_r;
square5(1:cross_length,end-cross_length+1:end,2) = cross_one_g;
square5(1:cross_length,end-cross_length+1:end,3) = cross_one_b;
% bottom left box
square5(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
square5(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
square5(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right box
square5(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
square5(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
square5(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back
square5(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
square5(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
square5(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(square5) 

% design pattern for sixth type of square (red bot left, 
% white top left, top right, bot right)
square6 = [dark_tile];
% square 6 corners
% top left box
square6(1:cross_length,1:cross_length,1) = cross_one_r;
square6(1:cross_length,1:cross_length,2) = cross_one_g;
square6(1:cross_length,1:cross_length,3) = cross_one_b;
% top right box
square6(1:cross_length,end-cross_length+1:end,1) = cross_one_r;
square6(1:cross_length,end-cross_length+1:end,2) = cross_one_g;
square6(1:cross_length,end-cross_length+1:end,3) = cross_one_b;
% bottom left box
square6(end-cross_length+1:end, 1:cross_length,1) = cross_two_r;
square6(end-cross_length+1:end, 1:cross_length,2) = cross_two_g;
square6(end-cross_length+1:end, 1:cross_length,3) = cross_two_b;
% bottom right box
square6(end-cross_length+1:end, end-cross_length+1:end,1) = cross_one_r;
square6(end-cross_length+1:end, end-cross_length+1:end,2) = cross_one_g;
square6(end-cross_length+1:end, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back
square6(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = dark_r;
square6(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = dark_g;
square6(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = dark_b;
% imshow(square6)

% design pattern for seventh type of square (red top right,
% white top left, bot left, bot right)
square7 = [light_tile];
% square 7 corners
% top left box
square7(1:cross_length,1:cross_length,1) = cross_one_r;
square7(1:cross_length,1:cross_length,2) = cross_one_g;
square7(1:cross_length,1:cross_length,3) = cross_one_b;
% top right box
square7(1:cross_length,end-cross_length+1:end,1) = cross_two_r;
square7(1:cross_length,end-cross_length+1:end,2) = cross_two_g;
square7(1:cross_length,end-cross_length+1:end,3) = cross_two_b;
% bottom left box
square7(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
square7(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
square7(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right box
square7(end-cross_length+1:end, end-cross_length+1:end,1) = cross_one_r;
square7(end-cross_length+1:end, end-cross_length+1:end,2) = cross_one_g;
square7(end-cross_length+1:end, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back
square7(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
square7(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
square7(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(square7) 

% design pattern for eighth type of square (white top right and bot left, 
% red top left and bot right)
square8 = [dark_tile];
% square 8 corners
% top left box
square8(1:cross_length,1:cross_length,1) = cross_two_r;
square8(1:cross_length,1:cross_length,2) = cross_two_g;
square8(1:cross_length,1:cross_length,3) = cross_two_b;
% top right box
square8(1:cross_length,end-cross_length+1:end,1) = cross_one_r;
square8(1:cross_length,end-cross_length+1:end,2) = cross_one_g;
square8(1:cross_length,end-cross_length+1:end,3) = cross_one_b;
% bottom left box
square8(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
square8(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
square8(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right box
square8(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
square8(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
square8(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back
square8(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = dark_r;
square8(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = dark_g;
square8(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = dark_b;
% imshow(square8)

%% Haley - driver, Shirley - observer
sampler = [square1 square2 square3 square4 square5 square6 square7 square8];
master_sampler = [sampler sampler sampler];
% create 'master' row to sample different grids from
total_rows = 15;
row = [];
% initiate matrix
for ii = 1:total_rows
% loop through number of rows
    if mod(ii,8) == 1
    % check if current row should be square1 -> square8
        row = [row; master_sampler(1:100, 1:1500, :)];
    elseif mod(ii,8) == 2
    % check if current row should be square8 -> square7
        row = [row; master_sampler(1:100, 701:2200, :)];
    elseif mod(ii,8) == 3
    % check if current row should be square7 -> square6
        row = [row; master_sampler(1:100, 601:2100, :)];
    elseif mod(ii,8) == 4
    % check if current row should be square6 -> square5
        row = [row; master_sampler(1:100, 501:2000, :)];
    elseif mod(ii,8) == 5
    % check if current row should be square5 -> square4
        row = [row; master_sampler(1:100, 401:1900, :)];
    elseif mod(ii,8) == 6
    % check if current row should be square4 -> square3
        row = [row; master_sampler(1:100, 301:1800, :)];
    elseif ii == 7
    % check if current row should be square3 -> square2
        row = [row; master_sampler(1:100, 201:1700, :)];
    elseif mod(ii,8) == 0
    % check if current row should be square2 -> square1
        row = [row; master_sampler(1:100, 101:1600, :)];
    elseif ii == 15
    % check if current row is the last row
        row = [row; [square5 [master_sampler(1:100, 301:1700, :)]]];
    end
end
% imshow(row);

%% Haley - driver, Shirley - observer

% dark green tile
dark_tile = zeros(100,100,3);
dark_tile(:,:,1) = dark_r;
dark_tile(:,:,2) = dark_g;
dark_tile(:,:,3) = dark_b;

% light green tile
light_tile = zeros(100,100,3);
light_tile(:,:,1) = light_r;
light_tile(:,:,2) = light_g;
light_tile(:,:,3) = light_b;


%% corner squares
corner_one_square = [light_tile]; 
% white bottom right tile
% bottom right box
corner_one_square(end-cross_length+1:end, end-cross_length+1:end,1) = cross_one_r;
corner_one_square(end-cross_length+1:end, end-cross_length+1:end,2) = cross_one_g;
corner_one_square(end-cross_length+1:end, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back to light green
corner_one_square(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
corner_one_square(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
corner_one_square(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(corner_one_square)

corner_two_square = [light_tile]; 
% red bottom left tile
% bottom left box
corner_two_square(end-cross_length+1:end, 1:cross_length,1) = cross_two_r;
corner_two_square(end-cross_length+1:end, 1:cross_length,2) = cross_two_g;
corner_two_square(end-cross_length+1:end, 1:cross_length,3) = cross_two_b;
% flooding the center back to light green
corner_two_square(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
corner_two_square(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
corner_two_square(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(corner_two_square)

%% top row without corner squares
sq9 = [dark_tile];
% square 9 corners (white bot left and red bot right)
% bottom left corner
sq9(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
sq9(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
sq9(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right corner
sq9(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
sq9(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
sq9(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back 
sq9(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = dark_r;
sq9(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = dark_g;
sq9(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = dark_b;
% imshow(sq9)

sq10 = [light_tile];
% square 10 corners (red bot left and red bot right)
% bottom left corner
sq10(end-cross_length+1:end, 1:cross_length,1) = cross_two_r;
sq10(end-cross_length+1:end, 1:cross_length,2) = cross_two_g;
sq10(end-cross_length+1:end, 1:cross_length,3) = cross_two_b;
% bottom right corner
sq10(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
sq10(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
sq10(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back 
sq10(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
sq10(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
sq10(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(sq10)

sq11 = fliplr(sq9);
% square 11 (red bot left and white bot right)
% imshow(sq11)

sq12 = [light_tile];
% square 12 corners (white bot left and red bot right)
% bottom left corner
sq12(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
sq12(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
sq12(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right corner
sq12(end-cross_length+1:end, end-cross_length+1:end,1) = cross_two_r;
sq12(end-cross_length+1:end, end-cross_length+1:end,2) = cross_two_g;
sq12(end-cross_length+1:end, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back
sq12(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
sq12(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
sq12(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(sq12)

sq13 = [light_tile];
% square 13 corners (white bot left and white bot right)
% bottom left corner
sq13(end-cross_length+1:end, 1:cross_length,1) = cross_one_r;
sq13(end-cross_length+1:end, 1:cross_length,2) = cross_one_g;
sq13(end-cross_length+1:end, 1:cross_length,3) = cross_one_b;
% bottom right corner
sq13(end-cross_length+1:end, end-cross_length+1:end,1) = cross_one_r;
sq13(end-cross_length+1:end, end-cross_length+1:end,2) = cross_one_g;
sq13(end-cross_length+1:end, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back 
sq13(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 1) = light_r;
sq13(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 2) = light_g;
sq13(cross_thick+1:end-cross_thick-1, cross_thick+1:end-cross_thick-1, 3) = light_b;
% imshow(sq13)

sq14 = fliplr(sq12);
% square 14 (red bot left and white bot right)
% imshow(sq14)

top_pattern = [sq9 sq10 sq11 sq12 sq11 sq13 sq9 sq14];
% first half of top row
top_row_full = [top_pattern top_pattern];
top_border = top_row_full(1:100, 1:1500,:);
% take off last tile of top_row_full
% imshow(top_border)

%% making the full right border including corners
right_flip = imrotate(top_border, 90);
% rotate top_border 90 degrees
right_border = fliplr(right_flip);
full_right_border = [corner_two_square; right_border; 
                    imrotate(corner_one_square, 180)];
% add first and last tiles to right_border
% imshow(full_right_border);

%% bottom row without corner squares
newsq9 = imrotate(sq9, 180);
% bottom square 9 (red top left and white top right)
% imshow(newsq9)

newsq10 = [dark_tile];
% bottom square 10 corners (red top left and red top right)
% top left corner
newsq10(1:cross_length, 1:cross_length,1) = cross_two_r;
newsq10(1:cross_length, 1:cross_length,2) = cross_two_g;
newsq10(1:cross_length, 1:cross_length,3) = cross_two_b;
% top right corner
newsq10(1:cross_length, end-cross_length+1:end,1) = cross_two_r;
newsq10(1:cross_length, end-cross_length+1:end,2) = cross_two_g;
newsq10(1:cross_length, end-cross_length+1:end,3) = cross_two_b;
% flooding the center back
newsq10(cross_thick+1:end-cross_thick-1,cross_thick+1:end-cross_thick-1,1) = dark_r;
newsq10(cross_thick+1:end-cross_thick-1,cross_thick+1:end-cross_thick-1,2) = dark_g;
newsq10(cross_thick+1:end-cross_thick-1,cross_thick+1:end-cross_thick-1,3) = dark_b;
% imshow(newsq10)

newsq11 = imrotate(sq11, 180);
% bottom square 11 (white top left and red top right)
% imshow(newsq11)

newsq12 = imrotate(sq12, 180);
% bottom square 12 corners (red top left and white top right)
% imshow(newsq12)

newsq13 = [dark_tile];
% bottom square 13 corners (white top left and white top right)
% top left corner
newsq13(1:cross_length, 1:cross_length,1) = cross_one_r;
newsq13(1:cross_length, 1:cross_length,2) = cross_one_g;
newsq13(1:cross_length, 1:cross_length,3) = cross_one_b;
% top right corner
newsq13(1:cross_length, end-cross_length+1:end,1) = cross_one_r;
newsq13(1:cross_length, end-cross_length+1:end,2) = cross_one_g;
newsq13(1:cross_length, end-cross_length+1:end,3) = cross_one_b;
% flooding the center back
newsq13(cross_thick+1:end-cross_thick-1,cross_thick+1:end-cross_thick-1,1) = dark_r;
newsq13(cross_thick+1:end-cross_thick-1,cross_thick+1:end-cross_thick-1,2) = dark_g;
newsq13(cross_thick+1:end-cross_thick-1,cross_thick+1:end-cross_thick-1,3) = dark_b;
% imshow(newsq13)

newsq14 = imrotate(sq14, 180);
% bottom square 14 corners (white top left and red top right)
% imshow(newsq14)

% create bottom border of grid
bottom_border = [newsq11 newsq12 newsq11 newsq12 newsq13 newsq14 newsq9...
                newsq14 newsq10 newsq12 newsq11 newsq12 newsq13 newsq14...
                newsq9];
% imshow(bottom_border)

%% left border with corner squares
left_flip = imrotate(bottom_border, 90);
% rotate bottom_border 90 degrees
left_border = fliplr(left_flip);
full_left_border = [corner_one_square; left_border; 
                    imrotate(corner_one_square,90)];
% add first and last tiles to left_border
% imshow(full_left_border);

%% putting it all together
% adding top and bottom rows without corners
long_row = [top_border; row; bottom_border];
% imshow(long_row)

% adding left and right borders with corners
moving_squares = [full_left_border long_row full_right_border];

% plot moving_squares with title
h = figure;
imshow(moving_squares);
t = title(sprintf('Moving Squares Illusion'));
descr = 'Move your head and eyes around for the full effect!';
text(440,1725,descr,'FontSize',14);
t.FontSize = 16;
    