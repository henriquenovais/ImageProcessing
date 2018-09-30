I = imread("trees.tif");

J = histeq(I, 16);
imwrite(K,"equalized_trees16.png");

figure(8),
subplot(2,2,1), imshow(I), title("Original Image");
subplot(2,2,2), imhist(I), title("Histogram");
subplot(2,2,3), imshow(J), title("Equalized Image");
subplot(2,2,4), imhist(J), title("Equalized Histogram");