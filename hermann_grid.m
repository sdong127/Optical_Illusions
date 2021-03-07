%% hermann_grid.m
%% written on March 6, 2021
%% by Haley Seo and Shirley Dong
%% This script creates Hermann Grid illusion

%% Shirley - driver, Haley - observer

% create row for grid
row = [zeros(1,1,3) ones(1,10,3) zeros(1,1,3)];
% imshow(row);

% create column for grid
col = imrotate(row,270);
% imshow(col);

% create black and white grid
bw_grid = repmat([col.*row],6,6);
% imshow(bw_grid);


% create figure and title for grids
h = figure;
heading = ['Hermann Grid Illusion\n By creating this illusion on Matlab,'...
            ' I can play around with the colors and sizes of the grids.'...
            '\n This allows me to study the in''s and out''s of the '...
            'illusion for my Perception and Mind class.\n'];
t = sgtitle(sprintf(heading));
t.FontSize = 16;

% change colors to green border, red squares
green_red = bw_grid;
% initiate green_red grid
[M,N,D] = size(green_red);
% get dimensions of grid
for ii = 1:M
% loop through rows of grid
    for jj = 1:N
    % loop through columns of grid
        rgb = reshape(green_red(ii,jj,:),3,1);
        % get RGB values at grid location ii,jj
        if rgb == zeros(3,1)
        % check if RGB values at ii,jj are 0s
            green_red(ii,jj,:) = cat(3,0,255,0);
            % change grid color to green
        end
        if rgb == ones(3,1)
        % check if RGB values at ii,jj are 1s
            green_red(ii,jj,:) = cat(3,255,0,0);
            % change grid color to red
        end
    end
end
subplot(2,2,1);
imshow(green_red);
% plot grid with green borders and red squares

% change colors to red border, green squares
red_green = bw_grid;
for ii = 1:M
    for jj = 1:N
        rgb = reshape(green_red(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if RGB values at ii,jj are 0s
            red_green(ii,jj,:) = cat(3,255,0,0);
            % change grid color to red
        end
        if rgb == ones(3,1)
        % check if RGB values at ii,jj are 1s
            red_green(ii,jj,:) = cat(3,0,255,0);
            % change grid color to green
        end
    end
end
subplot(2,2,2);
imshow(red_green);
% plot grid with red borders and green squares

% change colors to yellow border, blue squares
yellow_blue = bw_grid;
for ii = 1:M
    for jj = 1:N
        rgb = reshape(green_red(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if RGB values at ii,jj are 0s
            yellow_blue(ii,jj,:) = cat(3,255,255,0);
            % change grid color to yellow
        end
        if rgb == ones(3,1)
        % check if RGB values at ii,jj are 1s
            yellow_blue(ii,jj,:) = cat(3,0,0,255);
            % change grid color to blue
        end
    end
end
subplot(2,2,3);
imshow(yellow_blue);
% plot grid with yellow borders and blue squares

% change colors to blue border, yellow squares
blue_yellow = bw_grid;
for ii = 1:M
    for jj = 1:N
        rgb = reshape(blue_yellow(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if RGB values at ii,jj are 0s
            blue_yellow(ii,jj,:) = cat(3,0,0,255);
            % change grid color to blue
        end
        if rgb == ones(3,1)
        % check if RGB values at ii,jj are 1s
            blue_yellow(ii,jj,:) = cat(3,255,255,0);
            % change grid color to yellow
        end
    end
end
subplot(2,2,4);
imshow(blue_yellow);  
% plot grid with blue borders and yellow squares