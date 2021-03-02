%% heart_illusion.m
%% written on March 1, 2021
%% by Haley Seo and Shirley Dong
%% This script creates heart illusion
heart = imread('heart.jpg');
% read in heart image
%imshow(heart);

flipped_heart = imrotate(heart, 180);
%imshow(flipped_heart);

top_mat = repmat(heart,6,18);
% top half of matrix

flip_mat = repmat(flipped_heart,4,3);
% bottom corners of matrix

mid_mat = repmat(heart,4,12);
% bottom middle of matrix

bot_mat = [flip_mat mid_mat flip_mat];
% combine bottom sections of matrix
heart_mat = [top_mat;bot_mat];
% combine top and bottom of matrix
imshow(heart_mat);