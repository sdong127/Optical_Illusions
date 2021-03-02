%% heart_illusion.m
%% written on March 1, 2021
%% by Haley Seo and Shirley Dong
%% This script creates heart illusion
heart = imread('heart.jpg');
% read in heart image
imshow(heart);

flipped_heart = imrotate(heart, 180);
imshow(flipped_heart);

%heart_matrix1 = repmat(heart,10,18); %top half of the red hearts
% imshow(heart_matrix);
% make hearts smaller

% for ii = 1:10
%    for jj = 1:18
%        if ii > 1525 & jj <=1020
%            imrotate(heart_matrix(ii,jj),180);
%        end
%     end
% end
% imshow(heart_matrix);