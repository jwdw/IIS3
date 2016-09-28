function im = gradientMagnitude()

F = im2double(imread('chest.pgm'));
hx = [-1,0,1];
hy = [-1;0;1];

F2 = imfilter(F,hx,'replicate','conv');
F2 = imfilter(F2,hy,'replicate','conv');

imwrite(F2,'output.pgm');

end