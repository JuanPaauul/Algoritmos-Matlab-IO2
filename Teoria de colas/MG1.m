% M/G/1
lambda = input('Ingrese la tasa de llegada: ');
sigma = input('Ingrese la desviación estándar del tiempo de servicio: ');

Lq = ((lambda^2 * sigma^2) / (2 * (mu - lambda)^2)) * (1 + ((mu^2 * sigma^2) / (mu^2 - lambda^2))); % Longitud promedio de la cola
Wq = Lq / lambda; % Tiempo promedio de espera en la cola

fprintf('M/G/1:\n');
fprintf('Longitud promedio de la cola (Lq): %.2f\n', Lq);
fprintf('Tiempo promedio de espera en la cola (Wq): %.2f\n\n', Wq);