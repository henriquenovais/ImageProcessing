%Mean filter 

%Creating h matriz for a low-pass filter
h = [1 1 1; 1 1 1; 1 1 1]/9;

I = imread('kids.tif');
J = imnoise(I,'salt & pepper');
imwrite(J,'kids_noisy.tif');
B = filter2(h,double(J)/255);
imwrite(B,'kids_filtered.tif');
subplot(1,3,1);
imshow(I), title('Original image');
subplot(1,3,2);
imshow(J), title('Noisy image');
subplot(1,3,3);
imshow(B), title('Filtered image');
