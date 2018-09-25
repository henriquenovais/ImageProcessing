X = imread("cameraman.tif");


figure(1),
subplot(2,1,1), imhist(X, 128), title("Histogram");
subplot(2,1,2), imshow(X), title("Original Image");