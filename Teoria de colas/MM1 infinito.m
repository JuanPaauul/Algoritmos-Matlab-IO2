% M/M/1 infinito
lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');

rho = lambda / mu;
Lq = (rho^2) / (1 - rho); % Longitud promedio de la cola
Wq = Lq / lambda; % Tiempo promedio de espera en la cola

fprintf('M/M/1 infinito:\n');
fprintf('Longitud promedio de la cola (Lq): %.2f\n', Lq);
fprintf('Tiempo promedio de espera en la cola (Wq): %.2f\n\n', Wq);