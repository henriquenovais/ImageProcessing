X = imread("cameraman.tif");
Y = X(30:130,80:180,:);

imwrite(X,"originalimage.png");
imwrite(Y,"croppedimage.png");

figure(5),
subplot(2,1,1), imshow(X), title("Original Image");
subplot(2,1,2), imshow(Y), title("Cropped Image");