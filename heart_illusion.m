%% heart_illusion.m
%% written on March 1, 2021
%% by Haley Seo and Shirley Dong
%% This script creates heart illusion

%% Shirley - driver, Haley - observer

white_top = imread('topleft&right.png');
% read in image for top left and right portions of matrix
top_ends = repmat(white_top,5,3);
% create matrix for top left and right portions
% imshow(top_ends);

white_botright = imread('topmiddleleft.png');
% read in image for top middle left portion of matrix
topmid_left = repmat(white_botright,5,4);
% create matrix for top middle left portion
% imshow(topmid_left);

white_topright = imread('topmiddle.png');
% read in image for top middle portion of matrix
top_mid = repmat(white_topright,5,4);
% create matrix for top middle portion
% imshow(top_mid);

white_botleft = imread('topmiddleright.png');
% read in image for top middle right portion of matrix
topmid_right = repmat(white_botleft,5,4);
% create matrix for top middle right portion
% imshow(topmid_right);

top_mat = [top_ends,topmid_left,top_mid,topmid_right,top_ends];
% create top half of matrix
% imshow(top_mat);

flipped = imread('bottomleft&right.png');
% read in image for bottom left and right portions of matrix
bot_ends = repmat(flipped,5,3);
% create matrix for bottom left and right portions
% imshow(bot_ends);

white_topleft = imread('bottommiddle.png');
% read in image for bottom middle portion of matrix
bot_mid = repmat(white_topleft,5,4);
% create matrix for bottom middle portion
% imshow(bot_mid);

bot_mat = [bot_ends,topmid_right,bot_mid,topmid_left,bot_ends];
% create bottom half of matrix
% imshow(bot_mat);

% create entire heart matrix
heart_mat = [top_mat;bot_mat];

% plot heart_mat with title
h = figure;
imshow(heart_mat);
t = title(sprintf('Moving Hearts Illusion\nFor Your Valentine <3'));
t.FontSize = 16;