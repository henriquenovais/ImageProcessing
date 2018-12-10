%High-boost filtering technique for highlighting
%This is a technique in which three different values are used
%in order to specify the low frequency components that will be filtered.
%Once the filtering is done, the best picture is chosen.
J = imread('pout.tif');

p1 = 1.1;
p2 = 1.15;
p3 = 1.2;
w1 = 9*p1 - 1;
w2 = 9*p2 - 1;
w3 = 9*p3 - 1;

m1 = [-1 -1 -1; -1 w1 -1; -1 -1 -1];
m2 = [-1 -1 -1; -1 w2 -1; -1 -1 -1];
m3 = [-1 -1 -1; -1 w3 -1; -1 -1 -1];

L1 = filter2(m1, double(J)/255);
[lin, col] = size(L1);
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
imwrite(L1, 'L1.tif');

L2 = filter2(m2, double(J)/255);
[lin, col] = size(L1);
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
imwrite(L2, 'L2.tif');

L3 = filter2(m3, double(J)/255);
[lin, col] = size(L1);
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
imwrite(L3, 'L3.tif');

subplot(2,2,1), imshow(J), title('Intensity image');
subplot(2,2,2), imshow(L1), title('L1');
subplot(2,2,3), imshow(L2), title('L2');
subplot(2,2,4), imshow(L3), title('L3');





