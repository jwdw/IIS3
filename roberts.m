function F2 = roberts(F)

hx = [-1,0;0,1];
hy = [0,-1;1,0];

F2 = imfilter(F,hx,'replicate','conv');
F2 = imfilter(F2,hy,'replicate','conv');

end