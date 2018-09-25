
X = imread("cameraman.tif");
Y = imrotate(X,25);
imwrite(X,"originalimage.png");
imwrite(Y,"rotationimage.png");

figure 1,
subplot(1,2,1), imshow(X), title("Original Image");
subplot(1,2,2), imshow(Y), title("Rotational Image");