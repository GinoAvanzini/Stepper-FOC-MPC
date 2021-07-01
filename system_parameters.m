%% Space Vector Modulation on a 2-phase Stepper motor

clc
clear variables
close all

%% Parameters

% Mechanical
J = 48e-6;          % [kg m^2]
T_hold = 2.3;       % [Nm] Holding Torque
T_dm = 0.068;       % [Nm] Detent Torque (torque produced by the motor
                    % when the coils are not energized)
b = 0.05;           % [Nm/(rad/s)] (guesstimated)
T_load = 5.06e-3;   % [Nm] Load torque

% Electrical
R = 0.5;            % [Ohm]
L = 2e-3;           % [H]
p = 50;             % [teeth]   
I_rms = 4;          % [A] Rated current

K_t = T_hold/I_rms;    % [Nm/A] Torque constant

% Drive
U = 24;             % [V] Power supply voltage

