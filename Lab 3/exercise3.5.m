#Multiplying the original cropped images images
figure 8,
subplot(2,3,1), imshow(M1), title('M1');
subplot(2,3,2), imshow(M2), title('M2');
subplot(2,3,3), imshow(M3), title('M3');
subplot(2,3,4), imshow(immultiply(M1,M2)), title("M1*M2");
subplot(2,3,5), imshow(immultiply(M1,M3)), title("M1*M3");
subplot(2,3,6), imshow(immultiply(M2,M3)), title("M2*M3");