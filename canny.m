function im = canny(noiseLevel)

F = imread('chest.pgm');

param = [4 8];
noise_levels = [0.01];
smoothing = 2;

for noise = noise_levels
    figure
    Fn = imnoise(F, 'gaussian', 0, noise);
 
    
    F2 = edge(Fn,'canny', param, smoothing);
    imshow(F2);
    title(sprintf('threshold low: %d high: %d; noise = %d; smoothing = %d', param(1), param(2), noise, smoothing));
 end

end