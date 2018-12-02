%filtering images by the mean
%(mean filter)

%Creating spatial mask h for a pass-low filter(spatial filter)

h = [1 1 1; 1 1 1; 1 1 1]/9;
I = imread('kids.tif');
B = filter2(h, double(I)/255);
imwrite(B, 'kids_kMd.tif');
subplot(1,2,1);
imshow(I), title('Original image');
subplot(1,2,2);
imshow(B), title('Filtered image');