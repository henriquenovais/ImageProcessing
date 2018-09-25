
X = imread("cameraman.tif");
Y = imrotate(X,25,"nearest","loose");
Z = imrotate(X,25,"nearest","crop");


imwrite(X,"originalimage.png");
imwrite(Y,"rotationloose.png");
imwrite(Z,"rotationcrop.png");

figure(3),
subplot(1,3,1), imshow(X), title("Original Image");
subplot(1,3,2), imshow(Y), title("Loose Rotation");
subplot(1,3,3), imshow(Z), title("Crop Rotation");

