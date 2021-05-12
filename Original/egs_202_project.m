% Any of the variables that begin with raw_* may be edited to compute a
% momentum problem involving an inelastic collision and the energy loss
% for the inelastic collision.

% Given info

% Mass of truck
raw_m_t = 2.5  % in [Mg]
m_t = raw_m_t * 1000 % convert [Mg] to [kg]

% Initial velocity of truck
raw_v_t_i = 30 % [km/hr]
v_t_i = raw_v_t_i * (10^3/60^2) % convert to [m/s]; better for energy analysis

% Mass of car
raw_m_c = 1.5 % in [Mg]
m_c = raw_m_c * 1000 % convert [Mg] to [kg]

% Initial velocity of car 
raw_v_c_i = 0 % [km/hr]; car starts at rest
v_c_i = raw_v_c_i * (10^3/60^2)% convert to [m/s]; better for energy analysis

% Knowing that both car and truck "stick" together, they will have the same
% velocity.  So, after setting up the equation using the principle of
% conservation of momentum, the final velocity will equal:
v_f = (m_t*v_t_i + m_c*v_c_i)/(m_t + m_c) % Should be 5.21 [m/s] to the left.

% Now, computing the energy loss.

% For initial kinetic energy:
KE_1 = (1/2)*m_t*v_t_i^2 + (1/2)*m_c*v_c_i^2 % in [J]

% & final kinetic energy:
KE_2 = (1/2)*(m_t + m_c)*v_f^2 % in [J]

% So, change in kinetic energy is:
raw_delta_KE = KE_2 - KE_1 % still in [J]

% Finally, converting change in KE in [kJ] as engineering notation:
delta_KE = raw_delta_KE/1000 % Should be -32.6 kJ in this problem.

% Displaying results in a printed message.
fprintf("The final velocity is %1.2f [m/s] (positive means still moving to the left) and the change in energy is %2.1f [kJ] (negative sign means loss of KE).", v_f, delta_KE)
