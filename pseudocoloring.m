% pseudocolorizing

I = imread('moon.tif');
Y = grayslice(I,6);
imshow(Y, prism(6)), title('Pseudocolorized image');
colorbar;