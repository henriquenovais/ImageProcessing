%Example for the usage of a median filter 
%medfilt2(A, [M N]);
%Testing different sizes of the filtering mask

I = imread('moon.tif');
K = medfilt2(double(I)/255,[7 7]);
imwrite(K, 'moon_filtered2.tif');
subplot(1,2,1);
imshow(I), title('Original Image');
subplot(1,2,2);
imshow(K), title('Filtered image');