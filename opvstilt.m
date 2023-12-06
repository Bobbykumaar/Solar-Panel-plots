% Solar panel parameters
solar_constant = 1361; % Solar constant in W/m^2
panel_efficiency = 0.15; % Panel efficiency
panel_area = 1; % Panel area in m^2

% Simulation parameters
tilt_angles = 0:5:90; % Tilt angles in degrees
solar_declination = -23.44; % Solar declination angle for simplicity (approximate value for equator)

% Preallocate arrays for results
power_output = zeros(size(tilt_angles));

% Loop through each tilt angle
for i = 1:length(tilt_angles)
    % Calculate solar incidence angle
    solar_incidence = abs(tilt_angles(i) - solar_declination);

    % Calculate power output using the simple model (assuming a fixed panel efficiency)
    power_output(i) = panel_area * solar_constant * panel_efficiency * cosd(solar_incidence);
end

% Plotting the results
figure;
plot(tilt_angles, power_output, 'o-', 'LineWidth', 2);
title('Power Output vs Tilt Angle');
xlabel('Tilt Angle (degrees)');
ylabel('Power Output (Watts)');
grid on;
