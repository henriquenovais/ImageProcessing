RGB = imread("peppers.tif");
R=RGB(:,:,1);
G=RGB(:,:,2);
B=RGB(:,:,3);

figure 1, subplot(2,3,2), imshow(RGB), title('RGB');
subplot(2,3,4), imshow(R), title('R');
subplot(2,3,5), imshow(G), title('G');
subplot(2,3,6), imshow(B), title('B');
