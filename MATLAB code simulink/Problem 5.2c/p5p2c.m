%% code for finding maximum of estimate plot %%
maxF = max(pxx);  % Find max value over all elements.
indexOfFirstMax = find(pxx == maxF, 1, 'first');  % Get first element that is the max.
% Get the x and y values at that index.
maxY = pxx(indexOfFirstMax);
maxX = omega(indexOfFirstMax);