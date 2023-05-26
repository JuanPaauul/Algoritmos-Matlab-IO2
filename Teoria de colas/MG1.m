% M/G/1
lambda = input('Ingrese la tasa de llegada: ');
mu = input('Ingrese la tasa de servicio: ');
sigma = input('Ingrese la desviación estándar del tiempo de servicio: ');

rho = lambda / mu;
rho_eff = rho * exp((sigma^2) / 2);

P0 = 1 / (1 + (rho_eff / (1 - rho_eff)));
Lq = (rho^2 * (1 + (rho_eff / (1 - rho_eff)))) / (2 * (1 - rho_eff));
L = Lq + lambda / mu;
Wq = Lq / lambda;
W = Wq + (1 / mu);
Pw = rho * (1 - P0);

fprintf('M/G/1:\n');
fprintf('Probabilidad de estado estable (P0): %.4f\n', P0);
fprintf('Longitud promedio de la cola (Lq): %.4f\n', Lq);
fprintf('Longitud promedio del sistema (L): %.4f\n', L);
fprintf('Tiempo promedio de espera en la cola (Wq): %.4f\n', Wq);
fprintf('Tiempo promedio en el sistema (W): %.4f\n', W);
fprintf('Probabilidad de que un cliente deba esperar (Pw): %.4f\n\n', Pw);
