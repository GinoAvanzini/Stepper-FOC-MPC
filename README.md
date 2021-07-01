# Vector control of a stepper motor: clasic control and predictive controllers

Vector control of a two-phase PMSM (aka stepper motor) using a traditional PI control, a deadbeat predictive controller and Finite-Control-Set Model Predictive Control (FCS-MPC)

The project was divided into different parts:

- Modelling: standard state-space equations in ab frame of reference
- Vector control: Park transform and field oriented control (FOC)
- Voltage reference generation: space vector modulation and SPWM
- PI control: traditional strategy
- Deadbeat control: simplest "predictive" control 
- Model Predictive Control: using a finite set of control actions (FCS-MPC)

Modelling and simulation was done using Matlab and Simulink (disclaimer: the simulink model is a mess).

The predictive controllers (with their shortcomings) were able to achieve a very good dynamic response in simulation, much better than that of the traditional PI control. However care must be taken to ensure stability, specially with the deadbeat control, whose performance is heavily dependant on the accuracy of the model. The MPC is an interesting option but due to it been very computationally intensive, it makes it impossible to be run in real time. Finally, FCS-MPC acts on the electronic switches (MOSFET, IGBT) directly without modulation, thus drastically reducing the search space. This allows the algorithm to be run at higher frequencies.

![ ](docs/imgs/Fcs_mpc_simulink.png?raw=true)
![ ](docs/imgs/escalon_iq.png?raw=true)

## Author
Gino Avanzini

May 2021
