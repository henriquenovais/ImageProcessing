X = imread("trees.tif");


figure(2),
subplot(2,1,1), imhist(X, 128), title("Histogram");
subplot(2,1,2), imshow(X), title("Original Image");