Strength of Materials Project

%% This is a section.
% This is just a comment
elongation = [0, 0.0005, 0.0015, 0.0025, 0.0035, 0.0050, 0.0080, 0.0200, 0.0400, 0.1000, 0.2800, 0.4000, 0.4600]
l_0 = 2.00
strain = elongation/l_0
load = [0, 1.50, 4.60, 8.00, 11.00, 11.80, 11.80, 12.00, 16.60, 20.00, 21.50, 19.50, 18.50]
d = 0.503
r = d/2
A = pi*r^2
pi
stress = load/A
plot(strain, stress)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Stress-Strain Diagram for Steel Specimen')
save("Published/before-linear-isolation.mat")
strain_linear = strain(1:5)
stress_linear = stress(1:5)
plot(strain_linear, stress_linear)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Linear Region of Stress-Strain Diagram')
[r,m,b] = regression(strain_linear,stress_linear)
clc
save("complete-workspace-variables.mat")
elongation = [0, 0.0005, 0.0015, 0.0025, 0.0035, 0.0050, 0.0080, 0.0200, 0.0400, 0.1000, 0.2800, 0.4000, 0.4600]
l_0 = 2.00
strain = elongation/l_0
load = [0, 1.50, 4.60, 8.00, 11.00, 11.80, 11.80, 12.00, 16.60, 20.00, 21.50, 19.50, 18.50]
d = 0.503
r = d/2
A = pi*r^2
stress = load/A
plot(strain, stress)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Stress-Strain Diagram for Steel Specimen')
strain_linear = strain(1:5)
stress_linear = stress(1:5)
plot(strain_linear, stress_linear)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Linear Region of Stress-Strain Diagram')
elongation = [0, 0.0005, 0.0015, 0.0025, 0.0035, 0.0050, 0.0080, 0.0200, 0.0400, 0.1000, 0.2800, 0.4000, 0.4600]
l_0 = 2.00
strain = elongation/l_0
load = [0, 1.50, 4.60, 8.00, 11.00, 11.80, 11.80, 12.00, 16.60, 20.00, 21.50, 19.50, 18.50]
d = 0.503
r = d/2
A = pi*r^2
stress = load/A
plot(strain, stress)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Stress-Strain Diagram for Steel Specimen')
clc
strain_linear = strain(1:5)
stress_linear = stress(1:5)
plot(strain_linear, stress_linear)
