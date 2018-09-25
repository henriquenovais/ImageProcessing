X = imread("cameraman.tif");

Y = fliplr(X);
%Y = imrotate(X',270);
imwrite(X,"originalimage.png");
imwrite(X,"hflipimage.png");

figure(7),
subplot(1,2,1), imshow(X), title("Original Image");
subplot(1,2,2), imshow(Y), title("Horizontally Flipped Image");