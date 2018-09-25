RGB = imread("peppers.tif");

[X,MAP] = rgb2ind(RGB);
I = ind2gray(X, MAP);
J = ind2rgb(X, MAP);


figure(1),
subplot(1,2,1), imshow(I), title("Imagem de intensidade");
subplot(1,2,2), imshow(J), title("Imagem Colorida");