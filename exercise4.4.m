RGB1 = imread("football.tif");

RGB2 = imadjust(double(RGB1)/255,[0.2 0.3 0;0.6 0.7 1], []);
imwrite(RGB2,"football_adjusted.png");

figure(6),
subplot(1,2,1), imshow(RGB1), title("Original Image");
subplot(1,2,2), imshow(RGB2), title("Adjusted Image");