function F2 = sobel(F)

hx = [-1,-2,-1;0,0,0;1,2,1];
hy = [-1,0,1;-2,0,2;-1,0,1];

Fx = imfilter(F,hx,'replicate','conv');
Fy = imfilter(F,hy,'replicate','conv');

F2 = Fx + Fy;

end