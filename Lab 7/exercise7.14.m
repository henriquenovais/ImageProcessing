%Algorithm for border detection and extraction

BW = imread('mao.tif');
SE = [1 1 1;
      1 1 1;
      1 1 1];
%The image will be eroded twice and the border of the image will be obtained
%from the diffence result of: Original image - Eroded image.
R1 = imerode(BW,SE);
R1 = imerode(R1,SE);
imwrite(R1, 'eroded_imageR1.png');

R2 = BW - R1;
imwrite(R2,'difference_imageR2.png');

subplot(2,2,1), imshow(BW), title('Original image');
subplot(2,2,2), imshow(R1), title('Eroded image');
subplot(2,2,3), imshow(R2), title('Eroded image with difference from Original');