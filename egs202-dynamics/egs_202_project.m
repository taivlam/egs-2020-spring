% EGS 202 Dynamics Project
% 
% (This assumes you've performed the momentum math on paper first.)
% 
% (Here MATLAB is being used as a fancy calculator.)
% (Not the most amazing use of MATLAB ever, but MATLAB can shine if you need 
% to reassign initialized variables on the fly.)
% 
% --- Given info --- 
% 
% Conventions:
% - Velocity is positive if going to the left, and negative to the right.
% - KE increases if any delta KE is positive, and decreases if negative.
% 
% # Truck info
% * Initialize raw mass of truck
raw_m_t = 2.5  % in [Mg] (not the most convenient mass unit)
m_t = raw_m_t * 1000 % convert [Mg] to [kg]
% * Initialize raw initial velocity of truck
raw_v_t_i = 30 % [km/hr]
v_t_i = raw_v_t_i * (10^3/60^2) % convert [km/hr] to [m/s] (better for energy analysis)
% 
% # Car info
% * Initialize raw mass of car
raw_m_c = 1.5 % in [Mg] (not the most convenient)
m_c = raw_m_c * 1000 % convert [Mg] to [kg]
% Initialize raw initial velocity of truck 
raw_v_c_i = 0 % [km/hr]; car starts at rest
v_c_i = raw_v_c_i * (10^3/60^2)% convert [km/hr] to [m/s] (better for energy analysis)
% (The above step seems trivial for the car initially at rest, though leaving 
% this step in here makes this MATLAB script more extensible.)
%
% 
% # Conservation of Momentum
% * Consider this an inelastic collision.
% 
% * Compute common final velocity (of both truck and car):
v_f = (m_t*v_t_i + m_c*v_c_i)/(m_t + m_c) % in [m/s]
% Important final variable - use to display at end!
%
% # Compute loss of kinetic eneregy KE
% * Via principle of energy conservation
% 
% (Looks redundant)
raw_v_t_i = 30 % [km/hr]
v_t_i = raw_v_t_i * (10^3/60^2) % convert to [m/s]; better units for energy analysis
raw_v_c_i = 0 % [km/hr]; car starts at rest
v_c_i = raw_v_c_i * (10^3/60^2)% convert to [m/s]; better for energy analysis
v_f = (m_t*v_t_i + m_c*v_c_i)/(m_t + m_c) % in [m/s]
% 
% Initialize initial and final kinetic energy variables.

KE_1 = (1/2)*m_t*v_t_i^2 + (1/2)*m_c*v_c_i^2 % in [J]
KE_2 = (1/2)*(m_t + m_c)*v_f^2 % in [J]
raw_delta_KE = KE_2 - KE_1 % still in [J]
delta_KE = raw_delta_KE/1000
fprintf("The final velocity is %1.2f and the change in energy is %2.1f (negative sign indicates decrease).", v_f, delta_KE)
fprintf("The final velocity is %1.2f [m/s] and the change in energy is %2.1f [kJ] (negative sign indicates decrease).", v_f, delta_KE)
fprintf("The final velocity is %1.2f [m/s] (positive means still moving to the left) and the change in energy is %2.1f [kJ] (negative sign means loss of KE).", v_f, delta_KE)
