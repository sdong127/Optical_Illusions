%% moving_squares_illusion.m
%% written on March 4, 2021
%% by Haley Seo and Shirley Dong
%% This script creates the moving squares illusion

% creating the background grid
dark_green = zeros(100,100,3);
dark_green(:,:,1) = 0.3765;
dark_green(:,:,2) = 0.7882;
dark_green(:,:,3) = 0.5647;
% dark green tile

lt_green = zeros(100,100,3);
lt_green(:,:,1) = 0.5765;
lt_green(:,:,2) = 0.8745;
lt_green(:,:,3) = 0.2431;
% light green tile

% colors
% 60c990 dark green rgb(96, 201, 144)
% 93DF3E light green rgb(147, 223, 62)
% 17x17 squares

% % create second row of grid
% second_row = [dark_green];
% for ii = 1:16
%     if mod(ii,2) == 0
%         second_row = [second_row dark_green];
%     else
%         second_row = [second_row lt_green];
%     end
% end
% % imshow(second_row)


% design pattern for first type of square (white top left and bot right,
% red bot left and top right)
square1 = [lt_green];
%square 1 corners
%top left box
square1(1:20,1:20,1) = 255;
square1(1:20,1:20,2) = 255;
square1(1:20,1:20,3) = 255;
%top right box
square1(1:20,80:end,1) = 255;
square1(1:20,80:end,2) = 0;
square1(1:20,80:end,3) = 0;
%bottom left box
square1(80:end, 1:20,1) = 255;
square1(80:end, 1:20,2) = 0;
square1(80:end, 1:20,3) = 0;
%bottom right box
square1(80:end, 80:end,1) = 255;
square1(80:end, 80:end,2) = 255;
square1(80:end, 80:end,3) = 255;
%flooding the center back to light green
square1(7:93, 7:93, 1) = 0.5765;
square1(7:93, 7:93, 2) = 0.8745;
square1(7:93, 7:93, 3) = 0.2431;
%imshow(square1)

% design pattern for second type of square (white bot left, 
% red top left, top right, bot right)
square2 = [dark_green];
%square 2 corners
%top left box
square2(1:20,1:20,1) = 255;
square2(1:20,1:20,2) = 0;
square2(1:20,1:20,3) = 0;
%top right box
square2(1:20,80:end,1) = 255;
square2(1:20,80:end,2) = 0;
square2(1:20,80:end,3) = 0;
%bottom left box
square2(80:end, 1:20,1) = 255;
square2(80:end, 1:20,2) = 255;
square2(80:end, 1:20,3) = 255;
%bottom right box
square2(80:end, 80:end,1) = 255;
square2(80:end, 80:end,2) = 0;
square2(80:end, 80:end,3) = 0;
%flooding the center back to dark green
square2(7:93, 7:93, 1) = 0.3765;
square2(7:93, 7:93, 2) = 0.7882;
square2(7:93, 7:93, 3) = 0.5647;
%imshow(square2)
        
% design pattern for third type of square (white top right,
% red top left, bot left, bot right)
square3 = [lt_green];
%square 3 corners
%top left box
square3(1:20,1:20,1) = 255;
square3(1:20,1:20,2) = 0;
square3(1:20,1:20,3) = 0;
%top right box
square3(1:20,80:end,1) = 255;
square3(1:20,80:end,2) = 255;
square3(1:20,80:end,3) = 255;
%bottom left box
square3(80:end, 1:20,1) = 255;
square3(80:end, 1:20,2) = 0;
square3(80:end, 1:20,3) = 0;
%bottom right box
square3(80:end, 80:end,1) = 255;
square3(80:end, 80:end,2) = 0;
square3(80:end, 80:end,3) = 0;
%flooding the center back to light green
square3(7:93, 7:93, 1) = 0.5765;
square3(7:93, 7:93, 2) = 0.8745;
square3(7:93, 7:93, 3) = 0.2431;
%imshow(square3)  

% design pattern for fourth type of square (white top left and bot right,
% red top right and bot left)
square4 = [dark_green];
%square 4 corners
%top left box
square4(1:20,1:20,1) = 255;
square4(1:20,1:20,2) = 255;
square4(1:20,1:20,3) = 255;
%top right box
square4(1:20,80:end,1) = 255;
square4(1:20,80:end,2) = 0;
square4(1:20,80:end,3) = 0;
%bottom left box
square4(80:end, 1:20,1) = 255;
square4(80:end, 1:20,2) = 0;
square4(80:end, 1:20,3) = 0;
%bottom right box
square4(80:end, 80:end,1) = 255;
square4(80:end, 80:end,2) = 255;
square4(80:end, 80:end,3) = 255;
%flooding the center back to dark green
square4(7:93, 7:93, 1) = 0.3765;
square4(7:93, 7:93, 2) = 0.7882;
square4(7:93, 7:93, 3) = 0.5647;
%imshow(square4)

% design pattern for fifth type of square (white top right and bot left,
% red top left and bot right)
square5 = [lt_green];
%square 5 corners
%top left box
square5(1:20,1:20,1) = 255;
square5(1:20,1:20,2) = 0;
square5(1:20,1:20,3) = 0;
%top right box
square5(1:20,80:end,1) = 255;
square5(1:20,80:end,2) = 255;
square5(1:20,80:end,3) = 255;
%bottom left box
square5(80:end, 1:20,1) = 255;
square5(80:end, 1:20,2) = 255;
square5(80:end, 1:20,3) = 255;
%bottom right box
square5(80:end, 80:end,1) = 255;
square5(80:end, 80:end,2) = 0;
square5(80:end, 80:end,3) = 0;
%flooding the center back to light green
square5(7:93, 7:93, 1) = 0.5765;
square5(7:93, 7:93, 2) = 0.8745;
square5(7:93, 7:93, 3) = 0.2431;
%imshow(square5) 

% design pattern for sixth type of square (red bot left, 
% white top left, top right, bot right)
square6 = [dark_green];
%square 6 corners
%top left box
square6(1:20,1:20,1) = 255;
square6(1:20,1:20,2) = 255;
square6(1:20,1:20,3) = 255;
%top right box
square6(1:20,80:end,1) = 255;
square6(1:20,80:end,2) = 255;
square6(1:20,80:end,3) = 255;
%bottom left box
square6(80:end, 1:20,1) = 255;
square6(80:end, 1:20,2) = 0;
square6(80:end, 1:20,3) = 0;
%bottom right box
square6(80:end, 80:end,1) = 255;
square6(80:end, 80:end,2) = 255;
square6(80:end, 80:end,3) = 255;
%flooding the center back to dark green
square6(7:93, 7:93, 1) = 0.3765;
square6(7:93, 7:93, 2) = 0.7882;
square6(7:93, 7:93, 3) = 0.5647;
%imshow(square6)

% design pattern for seventh type of square (red top right,
% white top left, bot left, bot right)
square7 = [lt_green];
%square 7 corners
%top left box
square7(1:20,1:20,1) = 255;
square7(1:20,1:20,2) = 255;
square7(1:20,1:20,3) = 255;
%top right box
square7(1:20,80:end,1) = 255;
square7(1:20,80:end,2) = 0;
square7(1:20,80:end,3) = 0;
%bottom left box
square7(80:end, 1:20,1) = 255;
square7(80:end, 1:20,2) = 255;
square7(80:end, 1:20,3) = 255;
%bottom right box
square7(80:end, 80:end,1) = 255;
square7(80:end, 80:end,2) = 255;
square7(80:end, 80:end,3) = 255;
%flooding the center back to light green
square7(7:93, 7:93, 1) = 0.5765;
square7(7:93, 7:93, 2) = 0.8745;
square7(7:93, 7:93, 3) = 0.2431;
%imshow(square7) 

% design pattern for eighth type of square (white top right and bot left, 
% red top left and bot right)
square8 = [dark_green];
%square 8 corners
%top left box
square8(1:20,1:20,1) = 255;
square8(1:20,1:20,2) = 0;
square8(1:20,1:20,3) = 0;
%top right box
square8(1:20,80:end,1) = 255;
square8(1:20,80:end,2) = 255;
square8(1:20,80:end,3) = 255;
%bottom left box
square8(80:end, 1:20,1) = 255;
square8(80:end, 1:20,2) = 255;
square8(80:end, 1:20,3) = 255;
%bottom right box
square8(80:end, 80:end,1) = 255;
square8(80:end, 80:end,2) = 0;
square8(80:end, 80:end,3) = 0;
%flooding the center back to dark green
square8(7:93, 7:93, 1) = 0.3765;
square8(7:93, 7:93, 2) = 0.7882;
square8(7:93, 7:93, 3) = 0.5647;
%imshow(square8)


% create grid with patterned squares
% count_grid = 1;
% total_rows = 15;
grids_per_row = 15;
% row_length = size(my_grid);

% create first row of grid
% first_row = [square1];
% for ii = 1:grids_per_row
%     if first_row(end) == [square1]
%         first_row = [first_row square2];
%     elseif first_row(end) == [square2]
%         first_row = [first_row square3];
%     elseif first_row(end) == [square3]
%         first_row = [first_row square4];
%     elseif first_row(end) == [square4]
%         first_row = [first_row square5];
%     elseif first_row(end) == [square5]
%         first_row = [first_row square6];
%     elseif first_row(end) == [square6]
%         first_row = [first_row square7];
%     elseif first_row(end) == [square7]
%         first_row = [first_row square8];
%     elseif first_row(end) == [square8]
%         first_row = [first_row square1];
%     end
% end
% imshow(first_row);

sampler = [square1 square2 square3 square4 square5 square6 square7 square8];
master_sampler = [sampler sampler sampler];
%row1
row = [];
for ii = 1:15
    if mod(ii,8) == 1
        row = [row; master_sampler(1:100, 1:1500, :)];
    elseif mod(ii,8) == 2
        row = [row; master_sampler(1:100, 701:2200, :)];
    elseif mod(ii,8) == 3
        row = [row; master_sampler(1:100, 601:2100, :)];
    elseif mod(ii,8) == 4
        row = [row; master_sampler(1:100, 501:2000, :)];
    elseif mod(ii,8) == 5
        row = [row; master_sampler(1:100, 401:1900, :)];
    elseif mod(ii,8) == 6
        row = [row; master_sampler(1:100, 301:1800, :)];
    elseif ii == 7
        row = [row; master_sampler(1:100, 201:1700, :)];
    elseif mod(ii,8) == 0
        row = [row; master_sampler(1:100, 101:1600, :)];
    elseif ii == 15
        row = [row; [square5 [master_sampler(1:100, 301:1700, :)]];
    end
end
imshow(row);


    