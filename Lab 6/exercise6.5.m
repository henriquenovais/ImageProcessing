%Example for the usage of a median filter 
%medfilt2(A, [M N]);

I = imread('moon.tif');
K = medfilt2(double(I)/255,[3 3]);
imwrite(K, 'moon_filtered.tif');
subplot(1,2,1);
imshow(I), title('Original Image');
subplot(1,2,2);
imshow(K), title('Filtered image');