% M/G/K
K = input('Ingrese la capacidad del sistema: ');

Lq = ((lambda^2 * sigma^2) / (2 * (mu - lambda)^2)) * (1 + ((mu^2 * sigma^2) / (mu^2 - lambda^2))) + ((lambda * sigma^2) / (mu - lambda)) * ((lambda / mu)^K) * (1 - ((lambda / mu)^(K+1))); % Longitud promedio de la cola
Wq = Lq / lambda; % Tiempo promedio de espera en la cola

fprintf('M/G/K:\n');
fprintf('Longitud promedio de la cola (Lq): %.2f\n', Lq);
fprintf('Tiempo promedio de espera en la cola (Wq): %.2f\n\n', Wq);
