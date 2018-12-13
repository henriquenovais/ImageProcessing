%Dilate image with multiple inbuilt structuring elements

BW = imread('quadrado.tif');
subplot(2,2,1),imshow(BW), title('Original Image');

SE1 = strel('square',11);
SE2 = strel('diamond',11);
SE3 = strel('disk',11,0);

C = imdilate(BW,SE1);
imwrite(C,'dilation_square.png');
subplot(2,2,2), imshow(C), title('Dilation - square element');

D = imdilate(BW,SE2);
imwrite(D,'dilation_diamond.png');
subplot(2,2,3), imshow(D), title('Dilation - diamond element');

E = imdilate(BW,SE3);
imwrite(E,'dilation_disk.png');
subplot(2,2,4), imshow(E), title('Dilation - disk element');