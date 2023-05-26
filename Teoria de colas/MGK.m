% M/G/K
lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');
K = input('Ingrese la capacidad del sistema: ');

rho = lambda / mu;

P0_denominator = sum((rho.^(0:K)) ./ factorial(0:K)) + ((rho^K / factorial(K)) * sum((rho.^(K+1:2*K-1)) ./ (factorial(K) * (K.^(0:(K-1))))));
P0 = 1 / P0_denominator;

Lq = ((rho^(K+1) * P0) / (factorial(K) * (1 - rho/K)^2)) * (rho^K / factorial(K));
L = Lq + lambda / mu;
Wq = Lq / lambda;
W = Wq + 1 / mu;
Pw = 1 - P0;

fprintf('M/G/K:\n');
fprintf('Probabilidad de estado estable (P0): %.4f\n', P0);
fprintf('Longitud promedio de la cola (Lq): %.4f\n', Lq);
fprintf('Longitud promedio del sistema (L): %.4f\n', L);
fprintf('Tiempo promedio de espera en la cola (Wq): %.4f\n', Wq);
fprintf('Tiempo promedio en el sistema (W): %.4f\n', W);
fprintf('Probabilidad de que un cliente deba esperar (Pw): %.4f\n\n', Pw);

calculate_Pn = input('¿Desea calcular y mostrar la probabilidad de que haya exactamente "n" clientes en el sistema (Pn)? (s/n): ', 's');
if calculate_Pn == 's'
    n = input('Ingrese el valor de "n": ');
    if n <= K
        Pn = ((rho^K * P0) / factorial(K)) * (rho^n / factorial(n));
        fprintf('Probabilidad de que haya exactamente %d clientes en el sistema (P%d): %.4f\n\n', n, n, Pn);
    else
        fprintf('El valor de "n" debe ser menor o igual a la capacidad del sistema (K).\n\n');
    end
end
