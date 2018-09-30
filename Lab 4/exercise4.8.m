X = imread("cameraman.tif");

Y = flipud(X);
%Y = imrotate(X',90);
imwrite(X,"originalimage.png");
imwrite(X,"vflipimage.png");

figure(8),
subplot(1,2,1), imshow(X), title("Original Image");
subplot(1,2,2), imshow(Y), title("Vertically Flipped Image");