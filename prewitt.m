function F2 = prewitt(F)

hx = [-1,-1,-1;0,0,0;1,1,1];
hy = [-1,0,1;-1,0,1;-1,0,1];

F2 = imfilter(F,hx,'replicate','conv');
F2 = imfilter(F2,hy,'replicate','conv');

end