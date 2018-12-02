%Another example of the mean filter's usage
h = [1 1 1; 1 1 1; 1 1 1]/9;

I = imread('trees.tif');
J = imnoise(I, 'salt & pepper');
imwrite(J,'trees_noisy.tif');
B = filter2(h,double(J)/255);
imwrite(B, 'trees_filtered.tif');
subplot(1,3,1);
imshow(I), title('Original image');
subplot(1,3,2);
imshow(J), title('Noisy image');
subplot(1,3,3);
imshow(B), title('Filtered image');