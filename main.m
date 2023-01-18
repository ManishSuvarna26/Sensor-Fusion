% Template for a typical Kalman Filter

% "Kalman filter finds the most optimum averaging factor for each
% consequent state. Also somehow remembers a little bit about the past
% states." And the Math in this is beautiful :) 

% In a discrete time interval model, if the states needs to be estimated,
% then the current state estimate x_est_cur = K * Z_cur + (1 - K) * x_est_prev.
% Where, Z_cur is the current instant measurement data from the sensor,
% K is the Kalman gain computed at current instant.

% What info do we usually have (not necessary to compute) at a given
% time instant? Z_k, x_est_prev. So only K needs to be computed. Following
% are the steps 

% We will need a process model :
% Assume a 2 state model for simplicity
x_prev = [0; 0.5];

x_cur = A * x_prev + B * u_cur + w_prev;

z_cur = H * x_cur + v_cur;

% w and v are the process and measurement noise resp.
