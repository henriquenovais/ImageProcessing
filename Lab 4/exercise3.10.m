X = imread("cameraman.tif");

[Y, MAP] = gray2ind(X);

v1 = impixel(Y,MAP,21,151);

x1 = [2 3 4 5 7];
y1 = [7 8 9 10 12];
v2 = impixel(Y,MAP, x1, y1);