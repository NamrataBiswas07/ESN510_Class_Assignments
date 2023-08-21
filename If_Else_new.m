close all; clear all; clc

val = rand(1)

if (val>0.5)
    a = val * 0.5;
    fprintf("Product = %f \n", a)

else
    a = val/0.5;
    fprintf("Division = %f \n", a)
end