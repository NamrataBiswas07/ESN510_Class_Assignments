close all; clear all; clc

rating = randi(10,1)

if ((rating>0) && (rating<=3))
    fprintf("Poor")
elseif ((rating>3) && (rating<=5))
    fprintf("Average")
elseif ((rating>5) && (rating<=7))
    fprintf("Good")
else
    fprintf("Excellent")
end