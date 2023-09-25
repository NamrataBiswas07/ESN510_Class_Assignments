clc
close all
clear all

iex = 2;

%% EXAMPLE 1:  Trapezoidal rule
if iex ==2
    % Make an example Parabola
    % y = ax^2 + bx + c
    
    % Input coefficients
    a = -1;
    b = 4;
    c = 0;
    
    % Intialize x
    x = [-1:.01:5];
    
    % Initialize function
    f = @(a,b,c,x) a*x.^2 + b*x + c;
    
    % Call the function and find value of Y at X
    y = f(a,b,c,x);
    
    % Discretize X for summation
    xmin = 0; xmax = 4;
    Nsamples = 100; % Number of points for dividing x (N-1 trapezoids)
    x_sum = linspace(xmin,xmax,Nsamples);
    h = (x_sum(Nsamples) - x_sum(1))/Nsamples;
    
    % Y- points at x for summation
    y_sum = f(a,b,c,x_sum);
    
    % Area using TRAPEZOIDAL RULE
    %p = y_sum(2) + y_sum(3) + y_sum(4) + y_sum(5);
   
    %for i = 2:Nsamples - 1
        %p = sum(y_sum(i));
    %end

    q = y_sum(2:Nsamples-1);
    p = sum(q);
    area1 = (h/2)*(y_sum(1)+y_sum(6)+(2*p)); % KEY
    
    % plot
    figure
    plot(x,y,'k','LineWidth',2);
    grid on, hold on
    
    % color area under the trapezoid
    for ii = 1:length(x_sum)-1
        area([x_sum(ii) x_sum(ii+1)],[y_sum(ii) y_sum(ii+1)]);
    end
    
    % plot circluar markers
    for ii = 1:length(x_sum)
        plot([x_sum(ii)],[y_sum(ii)],'o','MarkerFaceColor','r','MarkerEdgeColor','k');
    end
    title(sprintf('Trapezoidal Rule \n %dx^2 + %dx + %d; Area = %0.2f; N = %d',a,b,c,area1,Nsamples));
end
