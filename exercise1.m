#Matrix declaration:
A = [ 1 2 1 3; 1 1 2 3 1;2 2 3 2 2;1 3 2 1 1;]
#Convert matrix to an intensity image:
image = mat2gray(A)
#Display the generated image:
imshow(image)