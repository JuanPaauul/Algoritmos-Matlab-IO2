% M/D/1
% En este algoritmo no pude corregir el error que me da numeros negativos
% con probabilidades y longitudes

lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');

rho = lambda / mu;

P0 = 1 - rho;
Lq = (rho^2) / (2 * (1 - rho));
L = Lq + rho;
Wq = Lq / lambda;
W = Wq + (1 / mu);
Pw = rho;

fprintf('M/D/1:\n');
fprintf('Probabilidad de estado estable (P0): %.4f\n', P0);
fprintf('Longitud promedio de la cola (Lq): %.4f\n', Lq);
fprintf('Longitud promedio del sistema (L): %.4f\n', L);
fprintf('Tiempo promedio de espera en la cola (Wq): %.4f\n', Wq);
fprintf('Tiempo promedio en el sistema (W): %.4f\n', W);
fprintf('Probabilidad de que un cliente deba esperar (Pw): %.4f\n\n', Pw);
