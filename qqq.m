% Newton's Method (Without Pre-Conditioner)
% Written by Soumitra Sitole
% Date: Mar 4, 2017
clc
clear
format long
% Function Definition (Enter your Function here):
syms X Y;
%ffun = X - Y + 2*X^2 + 2*X*Y + Y^2;
%x1.^3+6*x1.^4-3*x2.^2+2*x2.^6
ffun = X^3+6*X^4-3*Y^2+2*Y^6
% Initial Guess (Choose Initial Guesses):
x(1) = 1;
y(1) = 1;
e = 10^(-8); % Convergence Criteria
i = 1; % Iteration Counter
% Gradient and Hessian Computation:
df_dx = diff(ffun, X);
df_dy = diff(ffun, Y);
J = [df_dx df_dy] % Gradient
ddf_ddx = diff(df_dx,X);
ddf_ddy = diff(df_dy,Y);
ddf_dxdy = diff(df_dx,Y);
H = [ddf_ddx, ddf_dxdy; ddf_dxdy, ddf_ddy] % Hessian