my_area = 2.0;
X = sprintf('A circle of area %f has a radius of %f',my_area,calculate_radius(my_area));
disp(X)




function result = calculate_radius( area )
	my_pi = pi;

    % Calculate the square root by a Taylor series in powers of x- 1 (a bad choice of method!)
    x = area / pi -1;
    x_2 = x*x;
    x_3 = x_2*x;
    x_4 = x_2*x_2;
    x_5 = x_3*x_2;

    result = 1 + 1/2*x - 1/8*x_2 + 1/16*x_3 - 5/128*x_4 + 7/256*x_5;
end




