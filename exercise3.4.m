
X = imread("cameraman.tif");
Y = imcrop(X,[71,107,92,95]);

imwrite(X,"originalimage.png");
imwrite(Y,"croppedimage.png");

figure(4),
subplot(2,1,1), imshow(X), title("Original Image");
subplot(2,1,2), imshow(Y), title("Cropped Image");