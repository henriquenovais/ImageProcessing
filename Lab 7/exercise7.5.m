%Erode image with a cross as the structuring element

BW1 = imread('circulos.tif');
subplot(2,3,1), imshow(BW1), title('Original Image');

BW2 = BW1;
SE = [0 0 1 1 0 0;
      0 0 1 1 0 0;
      1 1 1 1 1 1;
      1 1 1 1 1 1;
      0 0 1 1 0 0;
      0 0 1 1 0 0];
      
for i = 1:5
  C = imerode(BW2,SE);
  name = ['Eroded image ', int2str(i)];
  subplot(2,3,i+1), imshow(C), title(name);
  name = [name, '.png'];
  imwrite(C, name);
  BW2 = C;
  end