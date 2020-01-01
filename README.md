# LQR-Control
In this project I learned about Linear-Quadratic-Regulators and how they can be used to design full-state feedback control by optimizing a cost function that is depended on 2 penalty matrices. This project was split into 4 separate designs:
### Zero Setpoint LQR
For this part of the project we took our linearized nonlinear system and given 2 penalty matrices we designed the full-state feedback gain matrix in MATLAB and Simulink. Because our linearized system had been linearized about some nominal point we expected our controller to regulate the state variables and input to 0. We saw how the input signal ![equation](https://latex.codecogs.com/svg.latex?%5Cinline%20%24u%28t%29%24) and our state variables ![equation](https://latex.codecogs.com/svg.latex?%5Cinline%20%24x%24) transient response changed based on the penalty matrices used.

### Non-Zero Setpoint LQR
This part of the project was very similar to the first only this time we looked to control one of our state variables ![equation](https://latex.codecogs.com/svg.latex?%5Cinline%20%24x_%7B1%7D%24) such that it reached steady state at 10 not 0 like in the first part.

### LQR with Observer
In most cases we do not have all state variables avaliable for feedback and it is often the case that an observer is needed to instead estimate the state variables of the system. This part of the project looked at the effects of adding an observer to the full-state feedback obtained via LQR and we looked at the loss in our cost function that incurred because of the observer.

### Kalman Filter
For the final part of the project we looked at Kalman filters and its effectiveness to filter out white gaussian noise from our system.
