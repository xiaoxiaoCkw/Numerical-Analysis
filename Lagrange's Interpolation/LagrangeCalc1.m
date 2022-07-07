% LagrangeCalc1
% 用于计算问题1和问题2
syms x;

% 可修改参数:
% 函数
f = 1/(1+x^2);
% f = exp(x);
% 等分次数
n = 5;
% 插值区间
C = [-5, 5];
% C = [-1, 1];
% 插值点
X = [0.75, 1.75, 2.75, 3.75, 4.75];
% X = [-0.95, -0.05, 0.05, 0.95];
% X = [-4.75, -0.25, 0.25, 4.75];

% 题目
disp('Lagrange 1.(1)');
disp('n = 5');

h = (C(2)-C(1))/n;
Xk = ones(1, n+1);
Yk = ones(1, n+1);

for i = 1:(n+1)
    Xk(i) = C(1)+(i-1)*h;
    Yk(i) = subs(f, symvar(f), Xk(i));
end

for j = 1:length(X)
    result = Lagrange(Xk, Yk, X(j));
    disp(result);
end