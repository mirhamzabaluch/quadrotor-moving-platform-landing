# Quadrotor Landing on a Moving Platform

MATLAB/Simulink study of a quadrotor guidance and control architecture for
following a moving landing platform. The model combines virtual-target
guidance with cascaded backstepping control and a nonlinear quadrotor plant.

The work is a simulation study. It does not include hardware experiments,
flight-test data, or a claim of real-world flight validation.

## Model architecture

```text
Moving-platform reference
          |
          v
 Virtual-target guidance
          |
          v
 Outer-loop backstepping controller
          |
          v
 Inner-loop backstepping controller
          |
          v
 Nonlinear quadrotor plant
          |
          +------------------------> State feedback to guidance and control
```

The Simulink model is organised into the following top-level subsystems:

- `Guidance`: generates the virtual target from the platform motion.
- `Controller/Outer Loop Backstepping`: produces translational control
  commands from position-tracking errors.
- `Controller/Inner Loop Backstepping`: stabilises the attitude dynamics.
- `Quadrotor Plant`: represents the nonlinear vehicle dynamics.

## Repository contents

| Path | Description |
|---|---|
| `v1.slx` | Main Simulink model. |
| `open_model.m` | Opens the model from any MATLAB working directory. |
| `figures/` | Original simulation plots retained with the project record. |

## Open the model

The model has no preload or initialisation callback. In MATLAB, either run:

```matlab
open_model
```

or open `v1.slx` directly. The recorded model stop time is 100 s and the
solver configuration is `VariableStepAuto`.

The model was checked to load in MATLAB R2025b. The figures were produced
during the original project work and are retained as historical simulation
outputs; rerun the model before using them for a new quantitative comparison.

## Scope and limitations

This repository is intended to show the modelling and control architecture.
The implementation is a simplified simulation environment: actuator dynamics,
state-estimation errors, wind disturbances, sensor noise, saturation handling,
and real-time deployment are outside its present scope. These are the natural
next steps before considering experimental validation.

## License

Released under the [MIT License](LICENSE).
