function result = Runge_Kutta(a, b, alpha, N, f)
% 利用四阶龙格—库塔（Runge—Kutta）方法求解微分方程的初值问题
%   输入：迭代区间[a,b]，初始值alpha，数值点个数N，函数f(x, y)
%   输出：初值问题的数值解x_n, y_n, n=0,1,2,…,N
x0 = a;
y0 = alpha;
h = (b - a) / N;
X = zeros(N, 1);
Y = zeros(N, 1);
for n = 1:N
    K1 = h * f(x0, y0);
    K2 = h * f(x0 + h/2, y0 + K1/2);
    K3 = h * f(x0 + h/2, y0 + K2/2);
    K4 = h * f(x0 + h, y0 + K3);
    X(n) = x0 + h;
    Y(n) = y0 + (K1 + 2 * K2 + 2 * K3 + K4) / 6;
    x0 = X(n);
    y0 = Y(n);
end
result = [X, Y];
end
