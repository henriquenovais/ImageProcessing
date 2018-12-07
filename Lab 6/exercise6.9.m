%Filter an image through the usage of multiple other imagesc
%The noise used in this example is the salt & pepper noise

I = imread('cameraman.tif');
J = imnoise(I, 'salt & pepper');
K = imnoise(I, 'salt & pepper');

subplot(2,3,1);
imshow(I), title('Original Image');

for r = 2:5
  J = imdivide(imadd(J,K),2);
  K = imnoise(I, 'gaussian');
  subplot(2,3,r);
  imshow(K), title('Noisy image');
end

imwrite(K, 'cameraman_noisy.tif');
imwrite(J, 'cameraman_filtered.tif');

subplot(2,3,6);
imshow(J), title('Filtered image');