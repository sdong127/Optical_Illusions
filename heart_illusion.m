%% heart_illusion.m
%% written on March 1, 2021
%% by Haley Seo and Shirley Dong
%% This script creates heart illusion

white_top = imread('topleft&right.png');
% read in image for top left and right portions of matrix
top_ends = repmat(white_top,5,3);
% create matrix for top left and right portions
% imshow(top_ends);

white_botright = imread('topmiddleleft.png');
% read in image for top middle left portion of matrix
topmid_left = repmat(white_botright,5,4);
% create matrix for top middle left portion
%imshow(topmid_left);

white_topright = imread('topmiddle.png');
% read in image for top middle right portion of matrix
top_mid = repmat(white_topright,5,4);
%imshow(top_mid);

white_botleft = imread('topmiddleright.png');
% read in image for top middle right portion of matrix
topmid_right = repmat(white_botleft,5,4);
% create matrix for top middle right portion
%imshow(topmid_right);

top_mat = [top_ends,topmid_left,top_mid,topmid_right,top_ends];
% create top half of matrix
%imshow(top_mat);

flipped = imread('bottomleft&right.png');
% read in image for bottom left and right portions of matrix
bot_ends = repmat(flipped,5,3);
% create matrix for bottom left and right portions
%imshow(bot_ends);

white_topleft = imread('bottommiddle.png');
% read in image for bottom middle portion of matrix
bot_mid = repmat(white_topleft,5,4);
% create matrix for bottom middle portion
%imshow(bot_mid);

bot_mat = [bot_ends,topmid_right,bot_mid,topmid_left,bot_ends];
% create bottom half of matrix
%imshow(bot_mat);

heart_mat = [top_mat;bot_mat];
% create entire heart matrix
imshow(heart_mat);

% heart = imread('heart.png');
% % read in heart image
% %imshow(heart);
% 
% flipped_heart = imrotate(heart, 180);
% %imshow(flipped_heart);
% 
% top_mat = repmat(heart,6,18);
% % top half of matrix
% 
% flip_mat = repmat(flipped_heart,4,3);
% % bottom corners of matrix, regions where red hearts are upside down
% 
% mid_mat = repmat(heart,4,12);
% % bottom middle of matrix
% 
% bot_mat = [flip_mat mid_mat flip_mat];
% % combine bottom sections of matrix
% heart_mat = [top_mat;bot_mat];
% % combine top and bottom of matrix
% %imshow(heart_mat);
% 
% %making the green background
% my_background = zeros(3050,6120,3);
% my_background(:,:,1)=0.83137;
% my_background(:,:,2)=0.8549;
% my_background(:,:,3)=0.17647;
% %imshow(my_background);
% 
% % stacking heart_mat and my_background
% % green_bg = image(my_background);
% % axis off
% % hold on
% % hearts = image(heart_mat,'XData',[1 6120],'YData',[1 3050]);