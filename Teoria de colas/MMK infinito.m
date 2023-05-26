% M/M/K infinito
lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');
K = input('Ingrese la capacidad del sistema: ');

rho = lambda / mu;
Lq = (rho^(K+1)) / ((1 - rho) * factorial(K)); % Longitud promedio de la cola
Wq = Lq / lambda; % Tiempo promedio de espera en la cola

fprintf('M/M/K infinito:\n');
fprintf('Longitud promedio de la cola (Lq): %.2f\n', Lq);
fprintf('Tiempo promedio de espera en la cola (Wq): %.2f\n\n', Wq);