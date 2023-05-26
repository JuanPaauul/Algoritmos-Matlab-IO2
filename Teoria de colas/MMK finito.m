% M/M/K finito
K = input('Ingrese la capacidad del sistema: ');

Pk = zeros(1, K+1);
Pk(1) = 1 / (sum((rho.^k) / factorial(k) + (rho^K / (factorial(K) * (1 - rho))))); % Probabilidad de estado estable P0

for k = 1:K
    Pk(k+1) = (rho^k / factorial(k)) * P0; % Probabilidad de tener k clientes en el sistema
end

Lq = sum((0:K) .* Pk) - (1 - Pk(K+1)); % Longitud promedio de la cola
Wq = Lq / lambda; % Tiempo promedio de espera en la cola

fprintf('M/M/K finito:\n');
fprintf('Longitud promedio de la cola (Lq): %.2f\n', Lq);
fprintf('Tiempo promedio de espera en la cola (Wq): %.2f\n\n', Wq);