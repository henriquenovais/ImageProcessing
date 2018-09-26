#Adding BW images
figure 4,
subplot(2,3,1), imshow(BW1), title('BW1');
subplot(2,3,2), imshow(BW2), title('BW2');
subplot(2,3,3), imshow(BW3), title('BW3');
subplot(2,3,4), imshow(imadd(BW1,BW2)), title("BW1+BW2");
subplot(2,3,5), imshow(imadd(BW1,BW3)), title("BW1+BW3");
subplot(2,3,6), imshow(imadd(BW2,BW3)), title("BW2+BW3");