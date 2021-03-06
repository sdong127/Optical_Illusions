%% hermann_grid.m
%% written on March 6, 2021
%% by Haley Seo and Shirley Dong
%% This script creates Hermann Grid illusion

% create row for grid
row = [zeros(1,1,3) ones(1,10,3) zeros(1,1,3)];
%imshow(row);

% create column for grid
col = imrotate(row,270);
%imshow(col);

% create black and white grid
bw_grid = repmat([col.*row],6,6);
%imshow(bw_grid);


% create figure for grids
h = figure;

% change colors to green border, red squares
green_red = bw_grid;
[M,N,D] = size(green_red);
for ii = 1:M
    for jj = 1:N
        rgb = reshape(green_red(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if grid value at coord is 0
            green_red(ii,jj,:) = cat(3,0,255,0);
            % change grid color to green
        end
        if rgb == ones(3,1)
        % check if grid value at coord is 1
            green_red(ii,jj,:) = cat(3,255,0,0);
            % change grid color to red
        end
    end
end
%subplot(2,2
%imshow(green_red);

% change colors to red border, green squares
red_green = bw_grid;
[M,N,D] = size(red_green);
for ii = 1:M
    for jj = 1:N
        rgb = reshape(red_green(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if grid value at coord is 0
            red_green(ii,jj,:) = cat(3,255,0,0);
            % change grid color to red
        end
        if rgb == ones(3,1)
        % check if grid value at coord is 1
            red_green(ii,jj,:) = cat(3,0,255,0);
            % change grid color to green
        end
    end
end
%imshow(red_green);

% change colors to yellow border, blue squares
yellow_blue = bw_grid;
[M,N,D] = size(yellow_blue);
for ii = 1:M
    for jj = 1:N
        rgb = reshape(yellow_blue(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if grid value at coord is 0
            yellow_blue(ii,jj,:) = cat(3,255,255,0);
            % change grid color to yellow
        end
        if rgb == ones(3,1)
        % check if grid value at coord is 1
            yellow_blue(ii,jj,:) = cat(3,0,0,255);
            % change grid color to blue
        end
    end
end
%imshow(yellow_blue);

% change colors to blue border, yellow squares
blue_yellow = bw_grid;
[M,N,D] = size(blue_yellow);
for ii = 1:M
    for jj = 1:N
        rgb = reshape(blue_yellow(ii,jj,:),3,1);
        if rgb == zeros(3,1)
        % check if grid value at coord is 0
            blue_yellow(ii,jj,:) = cat(3,0,0,255);
            % change grid color to blue
        end
        if rgb == ones(3,1)
        % check if grid value at coord is 1
            blue_yellow(ii,jj,:) = cat(3,255,255,0);
            % change grid color to yellow
        end
    end
end
%imshow(blue_yellow);
        