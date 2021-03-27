%%data creation

web=webcam();
image=snapshot(web);
imshow(image)
imwrite(image, '3k.jpg');

%%face recognition
clear all;
web=webcam();
image=snapshot(web);
detector=vision.CascadeObjectDetector();
imshow(image);
while true
    image=snapshot(web);
    im2=rgb2gray(image);
    bbox=step(detector,im2);
    pic=insertObjectAnnotation(image,'rectangle',bbox,'Face');
    imshow(pic);
    
end
