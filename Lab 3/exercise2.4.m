#Subtracting the original cropped images images
figure 7,
subplot(3,3,1), imshow(M1), title('M1');
subplot(3,3,2), imshow(M2), title('M2');
subplot(3,3,3), imshow(M3), title('M3');
subplot(3,3,4), imshow(imsubtract(M1,M2)), title("M1-M2");
subplot(3,3,5), imshow(imsubtract(M1,M3)), title("M1-M3");
subplot(3,3,6), imshow(imsubtract(M2,M3)), title("M2-M3");
subplot(3,3,7), imshow(imsubtract(M2,M1)), title("M2-M1");
subplot(3,3,8), imshow(imsubtract(M3,M1)), title("M3-M1");
subplot(3,3,9), imshow(imsubtract(M3,M2)), title("M3-M2");