function F2 = roberts(F)

hx = [-1,0;0,1];
hy = [0,-1;1,0];

Fx = imfilter(F,hx,'replicate','conv');
Fy = imfilter(F,hy,'replicate','conv');

F2 = Fx + Fy;

end