#Using logical operator AND with the original cropped images images
figure 11,
subplot(2,3,1), imshow(BW1), title('BW1');
subplot(2,3,2), imshow(BW2), title('BW2');
subplot(2,3,3), imshow(BW3), title('BW3');
subplot(2,3,4), imshow(BW1 & BW2), title("BW1 AND BW2");
subplot(2,3,5), imshow(BW1 & BW3), title("BW1 AND BW3");
subplot(2,3,6), imshow(BW2 & BW3), title("BW2 AND BW3");