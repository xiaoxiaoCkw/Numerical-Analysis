function result = Lagrange(X, Y, x)
% 利用拉格朗日插值多项式P_n_(x)求f(x)的近似值
%   输入：n+1个数据点(x_k, f(x_k))的横坐标向量X，纵坐标向量Y，k=0,1,...,n；插值点x
%   输出：f(x)在插值点x的近似值P_n_(x)
y = 0.0;
k = 1;
n = length(X);
while k <= n
    l = 1.0;
    for j = 1:n
        if j == k
            continue;
        end
        l = l * (x - X(j)) / (X(k) - X(j));
    end
    y = y + l * Y(k);
    k = k + 1;
end
result = [x, y];
end