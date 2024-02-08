%%CPET563 LAB3 
clc
clear

left5 = rgb2gray(imread('left6.jpg'));
subplot(3,2,1)
imshow(left5)

right5 = rgb2gray(imread('right6.jpg'));
subplot(3,2,2)
imshow(right5)

rlsub = right5-left5;
subplot(3,2,3)
imshow(rlsub)

rlplus = (right5 + left5);
subplot(3,2,4)
imshow(rlplus)

rpp = (rlplus - 2*rlsub);
subplot(3,2,5)
imshow(rpp)

[BW,threshold] = edge(rpp,"sobel",0.25,"both","nothinning");
subplot(3,2,6)
imshow(BW)