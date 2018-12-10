%Highlighting using the unsharp masking technique

I = imread('peppers.tif');
J = rgb2gray(I);
imwrite(J,'peppers_gray.tif');

h = fspecial('unsharp');
L = filter2(h,double(J)/255);
[lin, col] = size(L);

for i=1:lin,
  for j=1:col,
    if L(i, j)<0
      L(i,j) = 0;
      end,
  end,
end

for i=1:lin,
  for j=1:col,
    if L(i,j)>255
      L(i,j)=255;
    end,
  end,
end

imwrite(L, 'peppers_highlighted2.tif');
subplot(1,2,1), imshow(J), title('Intensity image');
subplot(1,2,2), imshow(L), title('Highlighted image');

