my_area = 2.0;
X = sprintf('A circle of area %f has a radiys of %f',my_area,calculate_radius(my_area));
disp(X)




function result = calculate_radius( area )
	my_pi = 3.14159;

    % Calculate the square root by a Taylor series in powers of x- 1 (a bad choice of method!)
    x = area / pi -1;
    x_sq = x*x;
    x_cubed = x*x*x;
    x_4 = x*x*x*x;
    x_5 = x*x*x*x*x;

    result = 1 + 1/2*x - 1/8*x_sq + 1/16*x_cubed - 5/128*x_4 + 7/256*x_5;
end




