#Subtracting BW images
figure 5,
subplot(3,3,1), imshow(BW1), title('BW1');
subplot(3,3,2), imshow(BW2), title('BW2');
subplot(3,3,3), imshow(BW3), title('BW3');
subplot(3,3,4), imshow(imsubtract(BW1,BW2)), title("BW1-BW2");
subplot(3,3,5), imshow(imsubtract(BW1,BW3)), title("BW1-BW3");
subplot(3,3,6), imshow(imsubtract(BW2,BW3)), title("BW2-BW3");
subplot(3,3,7), imshow(imsubtract(BW2,BW1)), title("BW2-BW1");
subplot(3,3,8), imshow(imsubtract(BW3,BW1)), title("BW3-BW1");
subplot(3,3,9), imshow(imsubtract(BW3,BW2)), title("BW3-BW2");