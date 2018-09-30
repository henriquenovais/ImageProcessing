#Dividing the original cropped images images
figure 9,
subplot(3,3,1), imshow(M1), title('M1');
subplot(3,3,2), imshow(M2), title('M2');
subplot(3,3,3), imshow(M3), title('M3');
subplot(3,3,4), imshow(imdivide(M1,M2)), title("M1/M2");
subplot(3,3,5), imshow(imdivide(M1,M3)), title("M1/M3");
subplot(3,3,6), imshow(imdivide(M2,M3)), title("M2/M3");
subplot(3,3,7), imshow(imdivide(M2,M1)), title("M2/M1");
subplot(3,3,8), imshow(imdivide(M3,M1)), title("M3/M1");
subplot(3,3,9), imshow(imdivide(M3,M2)), title("M3/M2");