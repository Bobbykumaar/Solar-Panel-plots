% Constants
solar_constant = 1361; % Solar constant in W/m^2
tilt_angles = 0:5:90; % Tilt angles in degrees
solar_declination = -23.44; % Solar declination angle for simplicity (approximate value for equator)

% Preallocate arrays for results
irradiance = zeros(size(tilt_angles));

% Loop through each tilt angle
for i = 1:length(tilt_angles)
    % Calculate solar incidence angle
    solar_incidence = abs(tilt_angles(i) - solar_declination);

    % Calculate Lambertian irradiance on the PV module
    irradiance(i) = solar_constant * cosd(solar_incidence);
end

% Plotting the results
figure;
plot(tilt_angles, irradiance, 'o-', 'LineWidth', 2);
title('Irradiance vs Tilt Angle');
xlabel('Tilt Angle (degrees)');
ylabel('Irradiance (W/m^2)');
grid on;
