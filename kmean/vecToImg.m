function [Image] = vecToImg(row)
%Input: row of data matrix
%Output: actual image corresponding to that row

r = row(1:1024);
g = row(1025:2048);
b = row(2049:3072);

Image(:,:,1) = reshape(r,32,32);
Image(:,:,2) = reshape(g,32,32);
Image(:,:,3) = reshape(b,32,32);

Image = Image/256;

%to show single image: imshow(image);

end
