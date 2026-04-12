# Quadrotor Moving Platform Landing

This project presents the modeling and control of a quadrotor for trajectory tracking and autonomous landing on a moving platform using MATLAB and Simulink.

## Objective
The objective is to design a control system that allows a quadrotor to track a moving platform using a virtual target guidance strategy.

## Features
- Nonlinear quadrotor dynamic model
- Outer-loop position control (x, y, z)
- Inner-loop attitude stabilization (roll, pitch, yaw)
- Virtual target generation based on relative motion
- MATLAB/Simulink implementation

## Tools
- MATLAB
- Simulink

## Current Status
The system includes the full plant model, control architecture, and moving platform guidance. Tracking behavior is achieved, though further tuning is ongoing to reduce oscillations and improve smoothness.

## Future Work
- Improve tracking performance
- Reduce oscillations in x-direction
- Refine virtual target coupling
- Add visualization/animation
