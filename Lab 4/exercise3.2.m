
X = imread("cameraman.tif");
Y = imrotate(X,25,"nearest");
Z = imrotate(X,25,"bilinear");
W = imrotate(X,25,"bicubic");


imwrite(X,"originalimage.png");
imwrite(Y,"rotationnearest.png");
imwrite(Z,"rotationbilinear.png");
imwrite(W,"rotationbicubic.png");

figure(2),
subplot(2,3,2), imshow(X), title("Original Image");
subplot(2,3,4), imshow(Y), title("Nearest Rotation");
subplot(2,3,5), imshow(Z), title("Bilinear Rotation");
subplot(2,3,6), imshow(W), title("Bicubic Rotation");
