%% moving_squares_illusion.m
%% written on March 4, 2021
%% by Haley Seo and Shirley Dong
%% This script creates the moving squares illusion

%creating the background grid
dark_green = zeros(100,100,3);
dark_green(:,:,1)=0.3765;
dark_green(:,:,2)=0.7882;
dark_green(:,:,3)=0.5647;

lt_green = zeros(100,100,3);
lt_green(:,:,1) = 0.5765;
lt_green(:,:,2) = 0.8745;
lt_green(:,:,3) = 0.2431;

% 	60c990 dark green rgb(96, 201, 144)
% 	93DF3E light green rgb(147, 223, 62)
%   17x17 squares

original = [lt_green];
for ii = 1:16
    if mod(ii,2) == 0
        original = [original lt_green];
    else
        original = [original dark_green];
    end
end
imshow(original)
    
%     for jj = 1:17
%         if mod((ii+jj),2) == 0
%             my_grid(ii,jj) = imshow(lt_green)
%         else
%             my_grid(ii,jj) = imshow(dark_green)
%         end
%     end
% end
imshow(my_grid)
        