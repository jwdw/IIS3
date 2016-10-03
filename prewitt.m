function F2 = prewitt(F)

hx = [-1,-1,-1;0,0,0;1,1,1];
hy = [-1,0,1;-1,0,1;-1,0,1];

Fx = imfilter(F,hx,'replicate','conv');
Fy = imfilter(F,hy,'replicate','conv');

F2 = Fx + Fy;

end