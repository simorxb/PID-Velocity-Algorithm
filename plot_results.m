% Access the signals from out.logsout

voltage = out.logsout.get('voltage').Values.Data;
t_voltage = out.logsout.get('voltage').Values.Time;

tq_dist = out.logsout.get('tq_dist').Values.Data;
t_tq_dist = out.logsout.get('tq_dist').Values.Time;

theta = out.logsout.get('theta').Values.Data(:);
t_theta = out.logsout.get('theta').Values.Time;

theta_stp = out.logsout.get('theta_stp').Values.Data(:);
t_theta_stp = out.logsout.get('theta_stp').Values.Time;

theta_meas = out.logsout.get('theta_meas').Values.Data;
t_theta_meas = out.logsout.get('theta_meas').Values.Time;

% Plot for theta
figure;
subplot(3, 1, 1);
plot(t_theta_stp, theta_stp, '--', 'LineWidth', 2);
hold on;
plot(t_theta_meas, theta_meas, 'LineWidth', 2);
hold off;
ylabel('Angular position - \theta (rad)');
legend({'Setpoint', 'Measured'}, 'FontSize', 12);
set(gca, 'FontSize', 12);
grid on;

% Plot for voltage
subplot(3, 1, 2);
plot(t_voltage, voltage, 'LineWidth', 2);
ylabel('Input Voltage (V)');
set(gca, 'FontSize', 12);
grid on;

% Plot for Torque Disturbance
subplot(3, 1, 3);
plot(t_tq_dist, tq_dist, 'LineWidth', 2);
xlabel('Time (s)');
ylabel('Torque Disturbance (N·m)');
set(gca, 'FontSize', 12);
grid on;