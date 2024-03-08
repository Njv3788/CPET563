%%CPET563 LAB3 
clc
clear

left5 = rgb2gray(imread('left7.jpg'));
subplot(4,2,1)
imshow(left5)

right5 = rgb2gray(imread('right7.jpg'));
subplot(4,2,2)
imshow(right5)

rpp = right5;
subplot(4,2,4)
imshow(rpp)

lpp = left5;
subplot(4,2,3)
imshow(lpp)


[spp,threshold] = edge(lpp,"sobel",0.05,"both","nothinning");
subplot(4,2,5)
[c,r,m] = imfindcircles(spp,[10,100]);
imshow(spp)
viscircles(c, r,'EdgeColor','b');

[spp,threshold] = edge(rpp,"sobel",0.043,"both","nothinning");
subplot(4,2,6)
[c,r,m] = imfindcircles(spp,[10,100]);
imshow(spp)
viscircles(c, r,'EdgeColor','b');
