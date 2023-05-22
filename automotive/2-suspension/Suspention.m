clear variables

% Suspention Parameters
Ks = 80000; % Sus spring rate (N/m)
Cs = 350;   % Sus damping coeffient
Kt = 500000;% Tire spring rate (N/m)
Ct = 15020; % Tire damping coeffient
MR = 1;     % Motion ration (Damper)
Ms = 2500;  % Sprung mass (kg)
Mu = 320;   % Unsprung mass (kg)

% Open Conventional Sus model
open('Conv_Suspention.slx');

% Run the Simulink file
out = sim('Conv_Suspention.slx');

% Get susoention travel ratio from slx file
y = out.SUS_Travel.signals.values;
% Plot the result in log scale with (Ktr / Ks) = 6.25
loglog(y)

% Set active sus controller parameters
travel_sus_factor = 0.3;
dynamc_def_factor = 0.4;
sprung_acc_factor = 0.3;

% Open Active Sus model
open('Active_Suspention_v3.slx');