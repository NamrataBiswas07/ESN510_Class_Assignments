clear all; close all; clc

for i = 1:100
    if rem(i,2)==0
        disp(i)
    end
end

for i = 1:50
    a = 2*i;
    disp(a)
end
z = 0;
for n = 1:3
    x = 2*n^2 + n + 1;
    %disp(x)
   
    %z = [z,x];
    
    %sum(z)
    z = z + x;
    disp(z)
end
