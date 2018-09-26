#Creating a color map
G = [1 0 0;0 1 0;0 0 1];
I = imread("trees.tif");
figure 1, imshow(I);
figure 2, imshow(I, G);
