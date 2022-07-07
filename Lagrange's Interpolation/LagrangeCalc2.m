% LagrangeCalc2
% 用于计算问题4
syms x;

% 可修改参数：
% 函数
f = sqrt(x);
% 已知节点
Xk = [1, 4, 9];
% Xk = [36, 49, 64];
% Xk = [100, 121, 144];
% Xk = [169, 196, 225];
% 插值点
X = [5, 50, 115, 185];
% 题目
disp('Lagrange 4.(1)');

Yk = ones(1, length(Xk));

for i = 1:length(Xk)
    Yk(i) = subs(f, symvar(f), Xk(i));
end

for j = 1:length(X)
    result = Lagrange(Xk, Yk, X(j));
    disp(result);
end