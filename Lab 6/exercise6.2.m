%Mean filter 

%Creating h matriz for a low-pass filter
h = [1 1 1; 1 1 1; 1 1 1]/9;
I = imread('trees.tif');
B = filter2(h,double(I)/255);
imwrite(B , 'trees_FMd.tif');
subplot(1,2,1);
imshow(I), title('Original image');
subplot(1,2,2);
imshow(B), title('Filtered image');
