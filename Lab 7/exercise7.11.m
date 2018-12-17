%Open an image through bwmorph presets of operations

BW = imread('circuito.tif');
subplot(1,2,1), imshow(BW), title('Original image');

I = bwmorph(BW,'open');
imwrite(I,'openning.png');
subplot(1,2,2), imshow(I), title('Opened image');

