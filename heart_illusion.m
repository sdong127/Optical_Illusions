%% heart_illusion.m
%% written on March 1, 2021
%% by Haley Seo and Shirley Dong
%% This script creates heart illusion
heart = imread('heart.jpg');
% read in heart image
%imshow(heart);

heart_matrix = repmat(heart,10,18);
% imshow(heart_matrix);
% make hearts smaller

for ii = 1:10
    for jj = 1:18
        if ii > 5 && (jj == 1 || jj == 2 || jj == 3)
            imrotate(heart_matrix(ii,jj),180);
        end
    end
end
imshow(heart_matrix);