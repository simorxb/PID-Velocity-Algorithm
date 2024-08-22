# PID Velocity Algorithm - DC Motor Angular Position Control

[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=simorxb/PID-Velocity-Algorithm)

## Summary
This project demonstrates the use of a PID Velocity algorithm to control the angular position of a DC motor. The project also provides a Simulink model to simulate the DC motor control using the Velocity PID algorithm, including a back-calculation anti-windup technique.

## Project Overview
The Velocity PID algorithm offers an alternative to the traditional PID controller by generating the derivative of the control input instead of the control input directly. This method allows for smoother transitions between controllers and modes, reducing the risk of abrupt changes in system behavior. The primary focus of this project is to control the angular position of a DC motor using the Velocity PID algorithm, simulated within Simscape.

### What is Velocity PID?
- **Traditional PID**: Generates the control input directly using the formula:
  $u(t) = kp \cdot e(t) + kd \cdot \frac{de(t)}{dt} + ki \cdot \int e(t) dt$
- **Velocity PID**: Generates the derivative of the control input:
  $\frac{du(t)}{dt} = kp \cdot \frac{de(t)}{dt} + kd \cdot \frac{d^2e(t)}{dt^2} + ki \cdot e(t)$
  The control input $u(t)$ is then obtained by integrating this derivative:
  $u(t) = \int \left( kp \cdot \frac{de(t)}{dt} + kd \cdot \frac{d^2e(t)}{dt^2} + ki \cdot e(t) \right) dt$

In the discrete-time domain, the algorithm is adapted using discrete approximations for the derivatives.

### Advantages of Velocity PID
- **Bumpless Transfer**: Easier to switch between controllers or from manual to automatic modes without causing sudden changes in the system.
- **Gain Scheduling**: Facilitates smoother changes in controller gains, avoiding bumps in the control signal.
- **Stability**: Reduces the risk of instability when adjusting the control loop during operation.

### Implementation Details
- **DC Motor Parameters**: Detailed parameters for the DC motor model are provided, and the system is simulated using Simscape in MATLAB.
- **Simulink Model**: A Simulink model is provided to simulate the Velocity PID control, incorporating a back-calculation anti-windup technique to manage integrator windup.
