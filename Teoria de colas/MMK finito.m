% M/M/K finito
lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');
K = input('Ingrese la capacidad del sistema: ');
N = input('Ingrese el tamaño de la población: ');

rho = lambda / mu;
sum_term1 = sum((rho.^(0:N)) ./ factorial(0:N));
sum_term2 = sum((rho.^(K+1:K+N)) ./ (factorial(K) * (K.^(0:N))));

P0 = 1 / (sum_term1 + (rho^K / (factorial(K) * (1 - rho/K)) * sum_term2));

Lq = ((rho^K * P0) / (factorial(K) * (1 - rho/K)^2)) * sum_term2;
L = Lq + lambda / mu;
Wq = Lq / lambda;
W = Wq + 1 / mu;
Pw = 1 - P0;

fprintf('M/M/K finito:\n');
fprintf('Probabilidad de estado estable (P0): %.4f\n', P0);
fprintf('Longitud promedio de la cola (Lq): %.4f\n', Lq);
fprintf('Longitud promedio del sistema (L): %.4f\n', L);
fprintf('Tiempo promedio de espera en la cola (Wq): %.4f\n', Wq);
fprintf('Tiempo promedio en el sistema (W): %.4f\n', W);
fprintf('Probabilidad de que un cliente deba esperar (Pw): %.4f\n', Pw);

calculate_Pn = input('¿Desea calcular y mostrar la probabilidad de que haya exactamente "n" clientes en el sistema (Pn)? (s/n): ', 's');
if calculate_Pn == 's'
    n = input('Ingrese el valor de "n": ');
    if n >= 0 && n <= N
        Pn = (rho^n / factorial(n)) * P0;
        fprintf('Probabilidad de que haya exactamente %d clientes en el sistema (P%d): %.4f\n\n', n, n, Pn);
    else
        fprintf('El valor de "n" debe ser mayor o igual a 0 y menor o igual a N.\n\n');
    end
else
    fprintf('\n');
end
