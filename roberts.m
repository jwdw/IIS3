function im = roberts()

F = im2double(imread('chest.pgm'));
hx = [-1,0;0,1];
hy = [0,-1;1,0];

F2 = imfilter(F,hx,'replicate','conv');
F2 = imfilter(F2,hy,'replicate','conv');

imwrite(F2,'outputRoberts.pgm');

end