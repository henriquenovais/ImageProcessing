I = imread("pout.tif");

%gamma < 1
J = imadjust(double(I)/255,[],[],0.5);
imwrite(J,"pout_adjusted3.png");

figure(3),
subplot(2,2,1), imshow(I), title("Original Image");
subplot(2,2,2), imhist(I), title("Histogram");
subplot(2,2,3), imshow(J), title("Adjusted Image");
subplot(2,2,4), imhist(J), title("Histogram");

%gamma = 1
K = imadjust(double(I)/255,[],[],1);
imwrite(K,"pout_adjusted4.png");

figure(4),
subplot(2,2,1), imshow(I), title("Original Image");
subplot(2,2,2), imhist(I), title("Histogram");
subplot(2,2,3), imshow(K), title("Adjusted Image");
subplot(2,2,4), imhist(K), title("Histogram");

%gamma > 1
L = imadjust(double(I)/255,[],[],2);
imwrite(L,"pout_adjusted5.png");

figure(5),
subplot(2,2,1), imshow(I), title("Original Image");
subplot(2,2,2), imhist(I), title("Histogram");
subplot(2,2,3), imshow(L), title("Adjusted Image");
subplot(2,2,4), imhist(L), title("Histogram");