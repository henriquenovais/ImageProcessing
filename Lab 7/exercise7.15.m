%Algorithm for border detection and extraction.

%This algorithm compares the different results as more and more erosions are 
% executed in the image.

BW1 = imread('mao.tif');
subplot(2,3,1), imshow(BW1), title('Original image');

BW2 = BW1;
SE = [1 1 1;
      1 1 1;
      1 1 1];
      
for i = 1:5
  R1 = imerode(BW2,SE);
  %The following code is supposed to expose the results of 
  %multiple the erosions:
  %name = ['Eroded image ', int2str(i)];
  %subplot(2,3,i+1),imshow(R1),title(name);
  %name = [name, '.png'];
  %imwrite(R1,name);
  BW2 = R1;
  
  R2 = BW1 - R1;
  name = ['Contour image ', int2str(i)];
  subplot(2,3,i+1),imshow(R2),title(name);
  name = [name, '.png'];
  imwrite(R2,name);
end
