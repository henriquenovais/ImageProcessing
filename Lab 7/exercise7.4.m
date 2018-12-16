%Dilation using bwmorph function

BW = imread('quadrado.tif');
subplot(1,2,1), imshow(BW), title('Original Image');

I = bwmorph(BW,'dilate', 7);
%BWMORPH is basically a function that packs all the possible morphological
% operations that can be executed with an image
imwrite(I,'dilation.png');
subplot(1,2,2), imshow(I), title('Dilated image');