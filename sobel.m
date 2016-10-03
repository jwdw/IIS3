function F2 = sobel(F)

hx = [-1,-2,-1;0,0,0;1,2,1];
hy = [-1,0,1;-2,0,2;-1,0,1];

F2 = imfilter(F,hx,'replicate','conv');
F2 = imfilter(F2,hy,'replicate','conv');

end