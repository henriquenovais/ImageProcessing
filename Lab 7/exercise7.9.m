%Executing multiple erosions and dilations through imerode and imdilate

BW = imread('circulosConectados.tif');
subplot(1,3,1), imshow(BW), title('Original Image');

SE = strel('disk', 11, 0);

C = imerode(BW,SE);
imwrite(C,'erosion disk.png');
subplot(1,3,2), imshow(C), title('Erosion through disk object');

D = imdilate(BW,SE);
imwrite(D,'dilation disk.png')
subplot(1,3,3), imshow(D), title('Dilation through disk object');