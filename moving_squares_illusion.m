%% moving_squares_illusion.m
%% written on March 4, 2021
%% by Haley Seo and Shirley Dong
%% This script creates the moving squares illusion

% creating the background grid
dark_green = zeros(10,10,3);
dark_green(:,:,1) = 0.3765;
dark_green(:,:,2) = 0.7882;
dark_green(:,:,3) = 0.5647;
% dark green tile

lt_green = zeros(10,10,3);
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
square1(2:9, 2:9, 1) = 0.5765;
square1(2:9, 2:9, 2) = 0.8745;
square1(2:9, 2:9, 3) = 0.2431;
%imshow(square1)

% design pattern for second type of square (white bot left, 
% red top left, top right, bot right)
square2 = [dark_green];
%square 2 corners
%top left box
square2(1:3,1:3,1) = 255;
square2(1:3,1:3,2) = 0;
square2(1:3,1:3,3) = 0;
%top right box
square2(1:3,8:end,1) = 255;
square2(1:3,8:end,2) = 0;
square2(1:3,8:end,3) = 0;
%bottom left box
square2(8:end, 1:3,1) = 255;
square2(8:end, 1:3,2) = 255;
square2(8:end, 1:3,3) = 255;
%bottom right box
square2(8:end, 8:end,1) = 255;
square2(8:end, 8:end,2) = 0;
square2(8:end, 8:end,3) = 0;
%flooding the center back to dark green
square2(2:9, 2:9, 1) = 0.3765;
square2(2:9, 2:9, 2) = 0.7882;
square2(2:9, 2:9, 3) = 0.5647;
%imshow(square2)
        
% design pattern for third type of square (white top right,
% red top left, bot left, bot right)
square3 = [lt_green];
%square 3 corners
%top left box
square3(1:3,1:3,1) = 255;
square3(1:3,1:3,2) = 0;
square3(1:3,1:3,3) = 0;
%top right box
square3(1:3,8:end,1) = 255;
square3(1:3,8:end,2) = 255;
square3(1:3,8:end,3) = 255;
%bottom left box
square3(8:end, 1:3,1) = 255;
square3(8:end, 1:3,2) = 0;
square3(8:end, 1:3,3) = 0;
%bottom right box
square3(8:end, 8:end,1) = 255;
square3(8:end, 8:end,2) = 0;
square3(8:end, 8:end,3) = 0;
%flooding the center back to light green
square3(2:9, 2:9, 1) = 0.5765;
square3(2:9, 2:9, 2) = 0.8745;
square3(2:9, 2:9, 3) = 0.2431;
%imshow(square3)  

% design pattern for fourth type of square (white top left and bot right,
% red top right and bot left)
square4 = [dark_green];
%square 4 corners
%top left box
square4(1:3,1:3,1) = 255;
square4(1:3,1:3,2) = 255;
square4(1:3,1:3,3) = 255;
%top right box
square4(1:3,8:end,1) = 255;
square4(1:3,8:end,2) = 0;
square4(1:3,8:end,3) = 0;
%bottom left box
square4(8:end, 1:3,1) = 255;
square4(8:end, 1:3,2) = 0;
square4(8:end, 1:3,3) = 0;
%bottom right box
square4(8:end, 8:end,1) = 255;
square4(8:end, 8:end,2) = 255;
square4(8:end, 8:end,3) = 255;
%flooding the center back to dark green
square4(2:9, 2:9, 1) = 0.3765;
square4(2:9, 2:9, 2) = 0.7882;
square4(2:9, 2:9, 3) = 0.5647;
%imshow(square4)

% design pattern for fifth type of square (white top right and bot left,
% red top left and bot right)
square5 = [lt_green];
%square 5 corners
%top left box
square5(1:3,1:3,1) = 255;
square5(1:3,1:3,2) = 0;
square5(1:3,1:3,3) = 0;
%top right box
square5(1:3,8:end,1) = 255;
square5(1:3,8:end,2) = 255;
square5(1:3,8:end,3) = 255;
%bottom left box
square5(8:end, 1:3,1) = 255;
square5(8:end, 1:3,2) = 255;
square5(8:end, 1:3,3) = 255;
%bottom right box
square5(8:end, 8:end,1) = 255;
square5(8:end, 8:end,2) = 0;
square5(8:end, 8:end,3) = 0;
%flooding the center back to light green
square5(2:9, 2:9, 1) = 0.5765;
square5(2:9, 2:9, 2) = 0.8745;
square5(2:9, 2:9, 3) = 0.2431;
%imshow(square5) 

% design pattern for sixth type of square (red bot left, 
% white top left, top right, bot right)
square6 = [dark_green];
%square 6 corners
%top left box
square6(1:3,1:3,1) = 255;
square6(1:3,1:3,2) = 255;
square6(1:3,1:3,3) = 255;
%top right box
square6(1:3,8:end,1) = 255;
square6(1:3,8:end,2) = 255;
square6(1:3,8:end,3) = 255;
%bottom left box
square6(8:end, 1:3,1) = 255;
square6(8:end, 1:3,2) = 0;
square6(8:end, 1:3,3) = 0;
%bottom right box
square6(8:end, 8:end,1) = 255;
square6(8:end, 8:end,2) = 255;
square6(8:end, 8:end,3) = 255;
%flooding the center back to dark green
square6(2:9, 2:9, 1) = 0.3765;
square6(2:9, 2:9, 2) = 0.7882;
square6(2:9, 2:9, 3) = 0.5647;
%imshow(square6)

% design pattern for seventh type of square (red top right,
% white top left, bot left, bot right)
square7 = [lt_green];
%square 7 corners
%top left box
square7(1:3,1:3,1) = 255;
square7(1:3,1:3,2) = 255;
square7(1:3,1:3,3) = 255;
%top right box
square7(1:3,8:end,1) = 255;
square7(1:3,8:end,2) = 0;
square7(1:3,8:end,3) = 0;
%bottom left box
square7(8:end, 1:3,1) = 255;
square7(8:end, 1:3,2) = 255;
square7(8:end, 1:3,3) = 255;
%bottom right box
square7(8:end, 8:end,1) = 255;
square7(8:end, 8:end,2) = 255;
square7(8:end, 8:end,3) = 255;
%flooding the center back to light green
square7(2:9, 2:9, 1) = 0.5765;
square7(2:9, 2:9, 2) = 0.8745;
square7(2:9, 2:9, 3) = 0.2431;
%imshow(square7) 

% design pattern for eighth type of square (white top right and bot left, 
% red top left and bot right)
square8 = [dark_green];
%square 8 corners
%top left box
square8(1:3,1:3,1) = 255;
square8(1:3,1:3,2) = 0;
square8(1:3,1:3,3) = 0;
%top right box
square8(1:3,8:end,1) = 255;
square8(1:3,8:end,2) = 255;
square8(1:3,8:end,3) = 255;
%bottom left box
square8(8:end, 1:3,1) = 255;
square8(8:end, 1:3,2) = 255;
square8(8:end, 1:3,3) = 255;
%bottom right box
square8(8:end, 8:end,1) = 255;
square8(8:end, 8:end,2) = 0;
square8(8:end, 8:end,3) = 0;
%flooding the center back to dark green
square8(2:9, 2:9, 1) = 0.3765;
square8(2:9, 2:9, 2) = 0.7882;
square8(2:9, 2:9, 3) = 0.5647;
%imshow(square8)


% create grid with patterned squares
count_grid = 1;
total_rows = 15;
grids_per_row = 15;
row_length = size(my_grid);

% create first row of grid
first_row = [square1];
for ii = 1:grids_per_row
    if first_row(end) == [square1]
        first_row = [first_row square2];
    elseif first_row(end) == [square2]
        first_row = [first_row square3];
    elseif first_row(end) == [square3]
        first_row = [first_row square4];
    elseif first_row(end) == [square4]
        first_row = [first_row square5];
    elseif first_row(end) == [square5]
        first_row = [first_row square6];
    elseif first_row(end) == [square6]
        first_row = [first_row square7];
    elseif first_row(end) == [square7]
        first_row = [first_row square8];
    elseif first_row(end) == [square8]
        first_row = [first_row square1];
    end
end
% imshow(first_row)


% while row_length(1) <= total_rows
%     if (my_grid(end) == [square1]) && (row_length(2) <= grids_per_row)
%         my_grid(count_grid) = ;
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square2]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square3];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square3]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square4];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square4]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square5];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square5]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square6];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square6]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square7];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square7]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square8];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square8]) && (row_length(2) <= grids_per_row)
%         my_grid = [my_grid square1];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square1]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid;square2]; %% fix so that new row starts
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square2]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square3];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square3]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square4];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square4]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square5];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square5]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square6];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square6]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square7];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square7]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square8];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
%     elseif (my_grid(end) == [square8]) && (row_length(2) > grids_per_row)
%         my_grid = [my_grid square1];
%         row_length = row_length + 1;
%         count_grid = count_grid + 1;
%         break
        
        
    