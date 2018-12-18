%Contour extraction through bwperim

BW = imread('mao.tif');
subplot(1,2,1), imshow(BW), title('Original image');

P1 = bwperim(BW);
imwrite(P1, 'contour image4.png');
subplot(1,2,2), imshow(P1), title('Contour Image');