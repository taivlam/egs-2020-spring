%% Obtaining Stress and Strain

% Prepare given data for stress-strain diagram.

%% Strain (horizontal axis)
% First, hard-code/load elongation data, in units of [in/in]:
% (first b/c it will be manipulated to be strain on the x-axis)
elongation = [0, 0.0005, 0.0015, 0.0025, 0.0035, 0.0050, 0.0080, 0.0200, 0.0400, 0.1000, 0.2800, 0.4000, 0.4600]

% Gage length: l_0 = 2.00 in.
l_0 = 2.00

% Strain is given by: strain = elongation/(gage length)
strain = elongation/l_0

%% Stress (vertical axis)
% Second, hard-code/load load data, in units of [kip]:
% (second b/c it will be manipulated to be stress on the y-axis)
load = [0, 1.50, 4.60, 8.00, 11.00, 11.80, 11.80, 12.00, 16.60, 20.00, 21.50, 19.50, 18.50]

% Diameter is given by: d = 0.503 in.
d = 0.503

% To obtain radius r, divide diameter by 2: r = d/2, in [in]
r = d/2

% To get circular cross sectional area A, use: A = pi*r^2 , in [in^2]:
A = pi*r^2

% Putting it all together, stress is given by: stress = load/A, in [ksi]:
stress = load/A

%% Plotting Stress-Strain Diagram
% Now, plot the stress-strain diagram, with: plot(x,y) = plot(strain, stress)
plot(strain, stress)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Stress-Strain Diagram for Steel Specimen')

%% Isolating Linear Region
% After fiddling around with data points, the first 5 are in the linear region
% of the stress-strain diagram are in the linear region.
% Note: MATLAB indices start at 1, not 0 like in CS.

% First 5 strain points on horizontal axis:
strain_linear = strain(1:5)

% First 5 stress points on vertical axis:
stress_linear = stress(1:5)

% This is what I had the linear region to look like:
% (to make sure these data points seem linear, as a sanity check)
plot(strain_linear, stress_linear)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Linear Region of Stress-Strain Diagram')

% Now, have MATLAB perform linear regression on the linear region of
% stress-strain diagram:
% where r is regression value, m is the slope, and b is the y-intercept.
[r,m,b] = regression(strain_linear,stress_linear)

% (In this case, there is only 1 line in this linear regression.)
% What we actually care about is the slope m, which will give us the modulus of
% elasticity, or Young's modulus.

%% The Answer
% So, according to the MATLAB code that was run, the slope is m = 3.1900e+04.
% This means that approximately E = 3.1900*10^4 ksi, or E = 31.9*10^3 ksi.
