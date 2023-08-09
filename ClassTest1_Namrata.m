clear all
clc

A = [1 2 3; 4 5 6; 7 8 10];

B = (A.');

disp(B)

C = inv(A);

disp(C)


clear all
clc

imgpath = 'C:\Users\Matlab\Downloads\classes-master\classes-master\numerical_methods\lab\data\iit-roorkee-logo.png'
M = imread("C:\Users\Matlab\Downloads\classes-master\classes-master\numerical_methods\lab\data\iit-roorkee-logo.png")
imshow(M)