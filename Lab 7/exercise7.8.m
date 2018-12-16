%Erode image using function bwmorph

%BWMORPH is basically a function that packs all the possible morphological
% operations that can be executed with an image

BW = imread('quadrado.tif');
subplot(1,2,1), imshow(BW), title('Original image');

I = bwmorph(BW,'erode',7);
%The bwmorph erosion will repeat itself seven times as coded here.
imwrite(I, 'erosion.png');
subplot(1,2,2), imshow(I), title('Eroded image');