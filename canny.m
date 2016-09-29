function im = canny(noiseLevel, param)

F = im2double(imread('chest.pgm'));

F2 = imnoise(F,'gaussian', noiseLevel);
F2 = edge(F2,'canny',param);

imwrite(F2,sprintf('outputCanny%0.2f_%0.2f_%0.2f.pgm', noiseLevel, param(1),param(2)));

end