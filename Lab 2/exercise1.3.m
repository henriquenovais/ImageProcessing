#Creating another intensity image but this time with more varying scales of grey
#Generating a vector created by the integers 0 to 15, each divided by 15
F = (0:15)/15;
#Create a matrix with three rows and each row being a F vector.
G = [F;F;F];
#Show the intensity image created through G.
imshow(G);