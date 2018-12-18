%Contour extraction through the usage of different structuring elements

BW = imread('mao.tif');
subplot(3,2,1), imshow(BW), title('Original image');

SE1 = strel('diamond',3);
R1 = imerode(BW,SE1);
imwrite(R1,'eroded_imagee.png');

R2 = BW - R1;
imwrite(R2, 'eroded image116.png');
subplot(3,2,3), imshow(R1), title('Eroded image 1');
subplot(3,2,4), imshow(R2), title('Contour image 1');

SE2 = strel('diamond',10);
R1 = imerode(BW,SE2);
imwrite(R1,'eroded_imageee.png');

R2 = BW - R1;
imwrite(R2, 'eroded image216.png');
subplot(3,2,5), imshow(R1), title('Eroded image 2');
subplot(3,2,6), imshow(R2), title('Contour image 2');



