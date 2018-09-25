X = imread("cameraman.tif");

v1 = impixel(X, 21 , 151);

x1 = [2 3 4 5 7];
y1 = [7 8 9 10 12];
v2 = impixel(X, x1, y1);