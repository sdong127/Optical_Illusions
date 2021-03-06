%% outer_squares.m
%% written on March 5, 2021
%% by Haley Seo and Shirley Dong
%% This script contains the squares for the outer border of moving squares
% dark green tile
dark_green = zeros(100,100,3);
dark_green(:,:,1) = 0.3765;
dark_green(:,:,2) = 0.7882;
dark_green(:,:,3) = 0.5647;
% light green tile
lt_green = zeros(100,100,3);
lt_green(:,:,1) = 0.5765;
lt_green(:,:,2) = 0.8745;
lt_green(:,:,3) = 0.2431;


%% corner squares
corner_white_square = [lt_green]; %right bottom white
%bottom right box
corner_white_square(81:end, 81:end,1) = 255;
corner_white_square(81:end, 81:end,2) = 255;
corner_white_square(81:end, 81:end,3) = 255;
%flooding the center back to light green
corner_white_square(7:93, 7:93, 1) = 0.5765;
corner_white_square(7:93, 7:93, 2) = 0.8745;
corner_white_square(7:93, 7:93, 3) = 0.2431;
% imshow(corner_square)

corner_red_square = [lt_green]; %left bottom red
%bottom right box
corner_red_square(81:end, 1:20,1) = 255;
corner_red_square(81:end, 1:20,2) = 0;
corner_red_square(81:end, 1:20,3) = 0;
%flooding the center back to light green
corner_red_square(7:93, 7:93, 1) = 0.5765;
corner_red_square(7:93, 7:93, 2) = 0.8745;
corner_red_square(7:93, 7:93, 3) = 0.2431;
% imshow(corner_red_square)

%% top row without corner squares
sq9 = [dark_green];
%square 9 corners, white bot left, red bot right
%bottom left corner
sq9(81:end, 1:20,1) = 255;
sq9(81:end, 1:20,2) = 255;
sq9(81:end, 1:20,3) = 255;
%bottom right corner
sq9(81:end, 81:end,1) = 255;
sq9(81:end, 81:end,2) = 0;
sq9(81:end, 81:end,3) = 0;
%flooding the center back to dark green
sq9(7:93, 7:93, 1) = 0.3765;
sq9(7:93, 7:93, 2) = 0.7882;
sq9(7:93, 7:93, 3) = 0.5647;
% imshow(sq9)

sq10 = [lt_green];
%bottom left corner
sq10(81:end, 1:20,1) = 255;
sq10(81:end, 1:20,2) = 0;
sq10(81:end, 1:20,3) = 0;
%bottom right corner
sq10(81:end, 81:end,1) = 255;
sq10(81:end, 81:end,2) = 0;
sq10(81:end, 81:end,3) = 0;
%flooding the center back to light green
sq10(7:93, 7:93, 1) = 0.5765;
sq10(7:93, 7:93, 2) = 0.8745;
sq10(7:93, 7:93, 3) = 0.2431;
% imshow(sq10)

sq11 = fliplr(sq9);
% imshow(sq11)

sq12 = [lt_green];
%bottom left corner
sq12(81:end, 1:20,1) = 255;
sq12(81:end, 1:20,2) = 255;
sq12(81:end, 1:20,3) = 255;
%bottom right corner
sq12(81:end, 81:end,1) = 255;
sq12(81:end, 81:end,2) = 0;
sq12(81:end, 81:end,3) = 0;
%flooding the center back to light green
sq12(7:93, 7:93, 1) = 0.5765;
sq12(7:93, 7:93, 2) = 0.8745;
sq12(7:93, 7:93, 3) = 0.2431;
% imshow(sq12)

sq13 = [lt_green];
%bottom left corner
sq13(81:end, 1:20,1) = 255;
sq13(81:end, 1:20,2) = 255;
sq13(81:end, 1:20,3) = 255;
%bottom right corner
sq13(81:end, 81:end,1) = 255;
sq13(81:end, 81:end,2) = 255;
sq13(81:end, 81:end,3) = 255;
%flooding the center back to light green
sq13(7:93, 7:93, 1) = 0.5765;
sq13(7:93, 7:93, 2) = 0.8745;
sq13(7:93, 7:93, 3) = 0.2431;
% imshow(sq13)

sq14 = fliplr(sq12);

top_pattern = [sq9 sq10 sq11 sq12 square11 sq13 sq9 sq14];
top_row_full = [top_pattern top_pattern];
top_border = top_row_full(1:100, 1:1500,:);
% imshow(top_row)

%% making the full right border including corners
right_flip = imrotate(top_border, 90);
right_border = fliplr(right_flip);
full_right_border = [ corner_red_square; right_border; imrotate(corner_white_square, 180)];
% imshow(full_right_border);
% asdf = imrotate(corner_white_square, 180);
% imshow(asdf)

%% bottom row without corner squares
newsq9 = imrotate(sq9, 180);

newsq10 = [dark_green];
newsq10(1:20, 1:20,1) = 255;
newsq10(1:20, 1:20,2) = 0;
newsq10(1:20, 1:20,3) = 0;
%top right corner
newsq10(1:20, 81:end,1) = 255;
newsq10(1:20, 81:end,2) = 0;
newsq10(1:20, 81:end,3) = 0;
%flooding the center back to dark green
newsq10(7:93,7:93,1) = 0.3765;
newsq10(7:93,7:93,2) = 0.7882;
newsq10(7:93,7:93,3) = 0.5647;
imshow(newsq10)

newsq11 = imrotate(sq11, 180);
% imshow(newsq10)

newsq12 = imrotate(sq12, 180);
% imshow(newsq12)
newsq13 = [dark_green];
%top left corner
newsq13(1:20, 1:20,1) = 255;
newsq13(1:20, 1:20,2) = 255;
newsq13(1:20, 1:20,3) = 255;
%top right corner
newsq13(1:20, 81:end,1) = 255;
newsq13(1:20, 81:end,2) = 255;
newsq13(1:20, 81:end,3) = 255;
%flooding the center back to dark green
newsq13(7:93,7:93,1) = 0.3765;
newsq13(7:93,7:93,2) = 0.7882;
newsq13(7:93,7:93,3) = 0.5647;
% imshow(newsq13)

newsq14 = imrotate(sq14, 180);
% imshow(newsq14)

bottom_border = [newsq11 newsq12 newsq11 newsq12 newsq13 newsq14 newsq9 newsq14 newsq10 newsq12 newsq11 newsq12 newsq13 newsq14 newsq9];
% imshow(bottom_border)

%% left border with corner squares
left_flip = imrotate(bottom_border, 90);
left_border = fliplr(left_flip);
full_left_border = [corner_white_square; left_border; imrotate(corner_white_square,90)];
% imshow(full_left_border);

%% putting it all together
% adding top and bottom rows without corners
long_row = [top_border; row; bottom_border];
% imshow(long_row)

% adding left and right borders with corners
moving_squares = [full_left_border long_row full_right_border];
imshow(moving_squares)