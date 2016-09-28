function im = boundaryDetector()

F = im2double(imread('chest.pgm'));
hc = [0,1,0;1,1,1;0,1,0];
hb = [1,1,1;1,1,1;1,1,1];

F2 = imerode(F,hc);
F3 = F-F2;
F3 = imdilate(F3,hb);
imwrite(F3,'outputCross.pgm');

F4 = imerode(F,hb);
F5 = F-F4;
F5 = imdilate(F5,hb);
imwrite(F5,'outputBlock.pgm');


end