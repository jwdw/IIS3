function a = ex1()

F = im2double(imread('chest.pgm'));
noise_levels = [0.002];

close all

for noise = noise_levels
  figure
  %title(sprintf('noise level = %d', noise))
  Fn = F
  %Fn = imnoise(F, 'gaussian', 0, noise);
  %imwrite(Fn, sprintf('noise%d.pgm', noise));
  
  subplot(2,2,1);
  F2 = gradientMagnitude(Fn);
  imshow(F2);
  title('gradient Magnitude');
  %imwrite(F2, sprintf('gradMag_noise%d.pgm', noise));
  
  subplot(2,2,2);
  F2 = sobel(Fn);
  imshow(F2);
  title('sobel');
  %imwrite(F2, sprintf('sobel_noise%d.pgm', noise));
  
  subplot(2,2,3);
  F2 = prewitt(Fn);
  imshow(F2);
  title('prewitt');
  %imwrite(F2, sprintf('prewitt_noise%d.pgm', noise));
  
  subplot(2,2,4);
  F2 = roberts(Fn);
  imshow(F2);
  title('roberts');
  %imwrite(F2, sprintf('roberts_noise%d.pgm', noise));
  
  
end

end