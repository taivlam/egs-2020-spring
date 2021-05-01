Dynamics Project

fprintf("Hello, world.")
vvv = 5/3
fprintf("The value of vvv is %f.",vvv)
fprintf("The value of vvv is %f",vvv)
fprintf("The value of vvv is %f7.",vvv)
fprintf("The value of vvv is %f9.",vvv)
fprintf("The value of vvv is %f.9",vvv)
fprintf("The value of vvv is %f.",vvv)
clc
% Given info
10^3
10^3/60^2
vvv = 5/3
fprintf("The value of vvv is %f",vvv)
clc
raw_m_t = 2.5  % in [Mg]
m_t = raw_m_t * 1000 % convert [Mg] to [kg]
raw_v_t_i = 30 % [km/hr]
v_t_i = raw_v_t_i * (10^3/60^2) % convert to [m/s]; better units for energy analysis
raw_m_c = 1.5 % in [Mg]
m_c = raw_m_c * 1000 % convert [Mg] to [kg]
raw_v_t_i = 0 % [km/hr]; car starts at rest
v_t_i = raw_v_t_i * (10^3/60^2)% convert to [m/s]; better for energy analysis
v_f = (m_t*v_t_i + m_c*v_c_i)/(m_t + m_c) % in [m/s]
raw_v_t_i = 30 % [km/hr]
v_t_i = raw_v_t_i * (10^3/60^2) % convert to [m/s]; better units for energy analysis
raw_v_c_i = 0 % [km/hr]; car starts at rest
v_c_i = raw_v_c_i * (10^3/60^2)% convert to [m/s]; better for energy analysis
v_f = (m_t*v_t_i + m_c*v_c_i)/(m_t + m_c) % in [m/s]
KE_1 = (1/2)*m_t*v_t_i^2 + (1/2)*m_c*v_c_i^2 % in [J]
KE_2 = (1/2)*(m_t + m_c)*v_f^2 % in [J]
raw_delta_KE = KE_2 - KE_1 % still in [J]
delta_KE = raw_delta_KE/1000
fprintf("The final velocity is %1.2f and the change in energy is %2.1f (negative sign indicates decrease).", v_f, delta_KE)
fprintf("The final velocity is %1.2f [m/s] and the change in energy is %2.1f [kJ] (negative sign indicates decrease).", v_f, delta_KE)
fprintf("The final velocity is %1.2f [m/s] (positive means still moving to the left) and the change in energy is %2.1f [kJ] (negative sign means loss of KE).", v_f, delta_KE)
