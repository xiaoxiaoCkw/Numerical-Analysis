% NewtonCalc
% 求非线性方程f(x)=0的根x*
syms x;

% 可修改参数：
% 函数
f = cos(x) - x;
%f = exp(-x) - sin(x);
%f = x - exp(-x);
%f = x^2 - 2 * x * exp(-x) + exp(-2 * x);
% 精度
e1 = 10^(-6);
e2 = 10^(-4);
% 最大迭代次数
N = 10;
% 初值
x0 = pi/4;
% 题目
disp('Newton 1.(1)');
disp('x* =');

result = Newton(x0, e1, e2, N, f);
disp(result);