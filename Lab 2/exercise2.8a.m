RGB = imread("peppers.tif");
figure 1, imshow(RGB);

[X,MAP] = rgb2ind(RGB);
figure 2,imshow(X,MAP);