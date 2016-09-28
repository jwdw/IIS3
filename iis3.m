
F = im2double(imread('chest.pgm'));

h = [-1,0,1];

F2 = imfilter(F,h,replicate,conv);

h2 = [0,1,0;1,1,1;0,1,0];

F3 = imdilate(F,h2);