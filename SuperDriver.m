%% Superconductivity



%% Calibrating the curve-Prelab 1-(THIS WAS NOT USED)

% Import Data

V = [-5.439;-5.261;-5.07;-4.865;-4.648;-4.419;-4.177;-3.923;-3.657;-3.379;-3.089;-2.788;-2.476;-2.153;-1.819;-1.475;-1.121;-0.757;-0.383;0;0.391;0.79];
Tc = [-190;-180;-170;-160;-150;-140;-130;-120;-110;-100;-90;-80;-70;-60;-50;-40;-30;-20;-10;0;10;20];

% Fit it
p = polyfit(V,Tc,5);

P = p(6) + p(5)*V + p(4)*V.^2 + p(3)*V.^3 + p(2)*V.^4 + p(1)*V.^5;

% Plot it
scatter(V,Tc)
hold on
plot(V,P)
hold off
xlabel('Voltage (mV)')
ylabel('Temperature (C)')

% Check Residuals
r = abs(P - T);


%%  Experiment 1

% Import Data

T = [-175.5;-175.2;-170;-165.5;-163.4;-161.8;-161;-160;-158.5;-156.5;-155.5;-153;-150;-147;-145;-143;-140.5;-139;-138;-137;-135;-133;-130;-125;-117;-96.5];
L = [786.3;786.1;788.1;791.2;809.7;850.2;900.2;955;1051;1266;1369;1590;1747;1881;2069;2252;2431;2494;2508;2514;2516;2516;2516;2516;2515;2513];


% Convert Temperature to Kelvin

T = T + 273;

% Plot Inductance versus Temp to find where it transitions

scatter(T,L)
title('Inductance Versus Temperature')
xlabel('Temperature (K)')
ylabel('Inductance (\muH)')


