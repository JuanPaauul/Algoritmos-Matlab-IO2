% M/D/1
lambda = input('Ingrese la tasa de llegada: ');
D = input('Ingrese el tiempo de servicio determinístico: ');

Lq = (lambda^2 * D^2) / (2 * (1 - lambda * D)); % Longitud promedio de la cola
Wq = Lq / lambda; % Tiempo promedio de espera en la cola

fprintf('M/D/1:\n');
fprintf('Longitud promedio de la cola (Lq): %.2f\n', Lq);
fprintf('Tiempo promedio de espera en la cola (Wq): %.2f\n\n', Wq);