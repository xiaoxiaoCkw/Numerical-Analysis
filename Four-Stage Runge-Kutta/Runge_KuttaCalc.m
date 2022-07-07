% Runge_KuttaCalc
% 求解微分方程的初值问题

% 可修改参数
% 函数
f = @(x, y) x + y;
% f = @(x, y) -y^2;
% f = @(x, y) 2 * y / x + (x^2) * exp(x);
% f = @(x, y) (y^2 + y) / x;
% f = @(x, y) -20 * (y - x^2) + 2 * x;
% f = @(x, y) -20 * y + 20 * sin(x) + cos(x);
% f = @(x, y) -20 * (y - exp(x) * sin(x)) + exp(x) * (sin(x) + cos(x));
% 迭代区间[a, b]
a = 0;
b = 1;
% a = 1;
% b = 3;
% 初始值y0
alpha = -1;
% 题目
disp('Runge Kutta 1.(1)');

disp('N = 5');
N = 5;
result = Runge_Kutta(a, b, alpha, N, f);
disp(result);

disp('N = 10');
N = 10;
result = Runge_Kutta(a, b, alpha, N, f);
disp(result);

disp('N = 20');
N = 20;
result = Runge_Kutta(a, b, alpha, N, f);
disp(result);
