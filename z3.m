clear;
close all;
clc;

% kvadratni klasifikator metodom zeljenog izlaza
% generisemo nelinearno separabilne klase

N = 500;

phi1 = 2*pi*rand(1, N); % podjednaka ver za svaki ugao
rho1 = rand(1, N); % poluprecnik je 1
X = zeros(2, N);
X(1, :) = rho1.*cos(phi1);
X(2, :) = rho1.*sin(phi1);

phi2 = 2*pi*rand(1, N);
rho2 = rand(1, N) + 2; % prsten
Y = zeros(2, N);
Y(1, :) = rho2.*cos(phi2);
Y(2, :) = rho2.*sin(phi2);

figure();
hold on;
scatter(X(1, :), X(2, :), 'bo');
scatter(Y(1, :), Y(2, :), 'ro');