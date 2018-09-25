I = imread("pout_comp.tif");

J = imadjust(double(I)/255,[0.4 0.6], [], 1);
imwrite(J, "exp_pout.tif");

figure(9),
subplot(2,2,1), imshow(I), title("Original Image");
subplot(2,2,2), imhist(I), title("Histogram");

subplot(2,2,3), imshow(J), title("Expanded Image");
subplot(2,2,4), imhist(J), title("Expanded Histogram");