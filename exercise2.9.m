#Using logical operator OR with the original cropped images images
figure 12,
subplot(2,3,1), imshow(BW1), title('BW1');
subplot(2,3,2), imshow(BW2), title('BW2');
subplot(2,3,3), imshow(BW3), title('BW3');
subplot(2,3,4), imshow(BW1 | BW2), title("BW1 OR BW2");
subplot(2,3,5), imshow(BW1 | BW3), title("BW1 OR BW3");
subplot(2,3,6), imshow(BW2 | BW3), title("BW2 OR BW3");