%To open an image it is necessary to do an erosion and then a dilation
%First, to do an openning we'll use the imdilate and imerode functions

BW = imread('CirculoTraco.tif');
subplot(2,2,1), imshow(BW), title('Original image');
%Defining the structuring element:

SE = strel("disk",5,0);

L = imerode(BW,SE);
imwrite(L, 'erosion disk open.png');
subplot(2,2,2), imshow(L), title('Eroded image');

M = imdilate(L,SE);
imwrite(M,'dilation disk open.png');
subplot(2,2,3), imshow(M), title('Dilated and eroded image');

N = imopen(BW,SE);
imwrite(N,'openned_image.png');
subplot(2,2,4), imshow(N), title('Opened image');