%Erode image with multiple inbuilt structuring elements

BW = imread('quadrado.tif');
subplot(2,2,1),imshow(BW), title('Original Image');

SE1 = strel('square',11);
SE2 = strel('diamond',11);
SE3 = strel('disk',11,0);

C = imerode(BW,SE1);
imwrite(C,'erosion_square.png');
subplot(2,2,2), imshow(C), title('Erosion - square element');

D = imerode(BW,SE2);
imwrite(D,'erosion_diamond.png');
subplot(2,2,3), imshow(D), title('Erosion - diamond element');

E = imerode(BW,SE3);
imwrite(E,'erosion_disk.png');
subplot(2,2,4), imshow(E), title('Erosion - disk element');