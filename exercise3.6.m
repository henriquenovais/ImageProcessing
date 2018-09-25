X = imread("cameraman.tif");
Y = imresize(X,2);
Z = imresize(X, 0.7);
W = imresize(X, [150, 250]);


imwrite(X,"originalimage.png");
imwrite(Y,"scale1image.png");
imwrite(Z,"scale2image.png");
imwrite(W,"scale3image.png");

figure(6),
subplot(2,3,2), imshow(X), title("Scale1 Image");
subplot(2,3,4), imshow(Y), title("Scale2 Image");
subplot(2,3,5), imshow(Z), title("Scale3 Image");
subplot(2,3,6), imshow(W), title("Scale4  Image");