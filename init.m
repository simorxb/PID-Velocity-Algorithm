%% Init params

m = 0.1;            % Mass of the disc (kg)
r = 0.05;           % Radius of the disc (m)
J = 0.5*m*r^2;      % Moment of inertia of the disc (kg*m^2)
b = 0.0000095;      % Viscous friction coefficient (N*m*s)
kt = 0.0187;        % Torque constant (N*m/A)
R = 0.6;            % Armature resistance (Ohm)
L = 0.35/1000;      % Armature inductance (H)
ke = 0.0191;        % Back EMF constant (V*s/rad)

%% PID

T = 0.01;           % Sampling time (s)
kp = 0.2;           % Proportional gain
ki = 0.3;           % Integral gain
kb = 1;             % Anti-windup gain
kd = 0.025;         % Derivative gain
tau = 0;            % Time constant for derivative filter