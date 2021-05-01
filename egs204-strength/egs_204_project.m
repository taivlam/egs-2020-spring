% EGS 204 Strength of Materials Project
% 
% --- Given info ---
% 
% * Initialize elongation as a list; units of [in].
elongation = [0, 0.0005, 0.0015, 0.0025, 0.0035, 0.0050, 0.0080, 0.0200, 0.0400, 0.1000, 0.2800, 0.4000, 0.4600]
% (Despite being shown as the 2nd column, elongation will be processed first 
% because strain is on the x-axis.)
% * Initialize gage length
l_0 = 2.00 % units of [in]
% * Compute strain, as a list:
strain = elongation/l_0 % unitless, or [in/in]
% This is the 
% 
% * Initialize load as a list; units of [kip]:
load = [0, 1.50, 4.60, 8.00, 11.00, 11.80, 11.80, 12.00, 16.60, 20.00, 21.50, 19.50, 18.50]
% * Initialize diameter:
d = 0.503 % units of [in]
% Compute radius:
r = d/2 % units of [in]
% Compute cross section area:
A = pi*r^2 % units of [in^2]; `pi` is a preset constant in MATLAB
% Compute stress, as a list:
stress = load/A % units of [ksi]
% 
% --- Plotting stress-strain diagrams ---
% 
% # The Whole Strain-Stress Diagram
% * First, plot the whole strain vs. stress diagram: 
plot(strain, stress)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Stress-Strain Diagram for Steel Specimen')
% 
% # The Linear Part of the Strain-Stress Diagram
% * Second, plot the linear section of the strain vs. stress diagram:
% Initialize linear strain:
strain_linear = strain(1:5) % still units of [in/in], or unitless
% Initalize linear stress:
stress_linear = stress(1:5) % still units of [ksi]
% (By visual inspection, it was determined that the first 5 data points were 
% linear - so, linear strain and linear stress lists are initialized.)
% 
% Plot the linear portion of the strain-stress diagram:
plot(strain_linear, stress_linear)
xlabel('Strain (in/in)')
ylabel('Stress (ksi)')
title('Linear Region of Stress-Strain Diagram')
% 
% (Linear regression)
[r,m,b] = regression(strain_linear,stress_linear)
% `m` is the slope of the linear regression over the linear portion of the 
% stress-strain diagram.
%
% * Display the answer:
fprintf("The modulus of elasticity E is %3.3f [ksi].", m)
% The answer for E should be: 32.0e3 [ksi].
