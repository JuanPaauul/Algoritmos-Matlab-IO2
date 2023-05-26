% M/M/1 infinito
lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');

rho = lambda / mu;
P0 = 1 / (1 + rho + rho^2/2);

Lq = rho^2 / (2 * (1 - rho));
L = rho + Lq;
Wq = Lq / lambda;
W = Wq + 1 / mu;
Pw = rho;

fprintf('M/M/1 infinito:\n');
fprintf('Probabilidad de estado estable (P0): %.4f\n', P0);
fprintf('Longitud promedio de la cola (Lq): %.4f\n', Lq);
fprintf('Longitud promedio del sistema (L): %.4f\n', L);
fprintf('Tiempo promedio de espera en la cola (Wq): %.4f\n', Wq);
fprintf('Tiempo promedio en el sistema (W): %.4f\n', W);
fprintf('Probabilidad de que un cliente deba esperar (Pw): %.4f\n', Pw);

calculate_Pn = input('¿Desea calcular y mostrar la probabilidad de que haya exactamente "n" clientes en el sistema (Pn)? (s/n): ', 's');
if calculate_Pn == 's'
    n = input('Ingrese el valor de "n": ');
    if n >= 0
        Pn = rho^n * P0;
        fprintf('Probabilidad de que haya exactamente %d clientes en el sistema (P%d): %.4f\n\n', n, n, Pn);
    else
        fprintf('El valor de "n" debe ser mayor o igual a 0.\n\n');
    end
else
    fprintf('\n');
end
