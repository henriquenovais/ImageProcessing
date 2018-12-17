%Closing through the usage of bwmorph algorithms

BW = imread('Quadfuros.tif');
subplot(1,2,1), imshow(BW), title('Original image');

I = bwmorph(BW,'close');
imwrite(I,'closed_image_bwmorph.png');
subplot(1,2,2), imshow(I), title('Closed image');

