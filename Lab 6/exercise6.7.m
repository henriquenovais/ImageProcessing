%Filtering noisy image through median filter

I = imread('moon.tif'); 
J = imnoise(I, 'salt & pepper');
imwrite(J, 'moon_noise.tif');
K = medfilt2(double(J)/255,[3 3]);
imwrite(K, 'moon_filtered.tif');

subplot(1,3,1);
imshow(I), title('Original image');
subplot(1,3,2);
imshow(J), title('Noisy image');
subplot(1,3,3);
imshow(K), title('Filtered image');
