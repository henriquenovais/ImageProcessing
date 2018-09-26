#Cropping images for usage and turning them into black and white(binary) images

I1 = imread("cameraman.tif");
rect = [20,20,120,120];
M1 = imcrop(I1,rect);
BW1 = im2bw(M1,graythresh(M1));

figure 1,
subplot(2,3,2), imshow(I1), title('I1');
subplot(2,3,4), imshow(M1), title('M1');
subplot(2,3,6), imshow(BW1), title('BW1');

I2 = imread("kids.tif");
rect = [20,20,120,120];
M2 = imcrop(I2,rect);
BW2 = im2bw(M2,graythresh(M2));

figure 2,
subplot(2,3,2), imshow(I2), title('I2');
subplot(2,3,4), imshow(M2), title('M2');
subplot(2,3,6), imshow(BW2), title('BW2');

I3 = imread("rice.tif");
rect = [20,20,120,120];
M3 = imcrop(I3,rect);
BW3 = im2bw(M3,graythresh(M3));

figure 3,
subplot(2,3,2), imshow(I1), title('I3');
subplot(2,3,4), imshow(M1), title('M3');
subplot(2,3,6), imshow(BW1), title('BW3');