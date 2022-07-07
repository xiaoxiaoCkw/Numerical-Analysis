% RombergCalc
% 计算f(x)在区间[a,b]上的定积分
syms x;

% 可修改参数
% 函数
f = x^2 * exp(x);
%f = exp(x) * sin(x);
%f = 4 / (1 + x^2);
%f = 1 / (x + 1);
% 精度
e = 10^(-6);
% 积分区间
b = 1; % 积分上限
a = 0; % 积分下限
% 题目
disp('Romberg 1.(1)');

result = Romberg(a, b, e, f);
fprintf('I(f) = %f\n', result);