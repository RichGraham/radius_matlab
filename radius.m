my_area = 2.0;
X = sprintf('A circle of area %f m^2 has a radiys of %f m',my_area,calculate_radius(my_area));
disp(X)

function result = calculate_radius( area )
	my_pi = 3.14159265;
    result = sqrt(area/my_pi);
end




