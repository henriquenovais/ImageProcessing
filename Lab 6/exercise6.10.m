%Highlight the image's  borders through a high pass filter(HPF)



I = imread('peppers.tif');
J = rgb2gray(I);
imwrite(J, 'peppers_gray.tif');

h = fspecial('sobel');
%fspecial is a function which creates spatial filters
%The horizontal sobel edge filter is used for border detection
A = filter2(h, J);
imwrite(A, 'peppers_Emboss.tif');

subplot(1,3,1);
imshow(I), title('Colorful Image');
subplot(1,3,2);
imshow(J), title('Monochromatic Image');
subplot(1,3,3);
imshow(A), title('Embossed Image');


