%filtering images by the mean
%(mean filter)

%Spatial mask for the filtering(spatial filter)

h = [1 1 1; 1 1 1; 1 1 1]/9;
I = imread('kids.tif');
B = filter2(h, double(I)/255);
imwrite(B, 'kids_kMd.tif');
subplot(1,2,1);
imshow(I), title('Imagem original');
subplot(1,2,2);
imshow(B), title('Imagem filtrada');