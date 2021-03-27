a = imread('C:/mat/3k.jpeg');
figure(2)
[height, width, colour_planes] = size(a)
subplot(2,3,1);
imshow(a);
title('Original Image');


b = rgb2gray(a);
subplot(2,3,2);
imshow(b);
title('GreyScale');

c = im2bw(a);
subplot(2,3,3);
imshow(c);
title('BinaryImage');

d = imadjust(b);
subplot(2,3,4);
imshow(d);
title('Edge detection');

e = a;
e=rgb2gray(e);
subplot(2,3,5);
imhist(e);
title('Histogram');

