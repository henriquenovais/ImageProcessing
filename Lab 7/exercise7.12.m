%The following algorithm was created to compare the usage of imclose function
%with the usage of imdilate and imerode in order to do a closing morph in an 
%image.

BW = imread('furos.tif');
subplot(2,2,1), imshow(BW), title('Original image');

SE = strel('disk',11,0);
L = imdilate(BW,SE);
imwrite(L,'dilated_image_closing.png');
subplot(2,2,2), imshow(L), title('Dilated image');

M = imerode(L,SE);
imwrite(M,'dilated_eroded_closing.png');
subplot(2,2,3), imshow(M), title('Dilated and then eroded image');

N = imclose(BW,SE);
imwrite(N, 'closed_image.png');
subplot(2,2,4), imshow(N), title('Closed image');
