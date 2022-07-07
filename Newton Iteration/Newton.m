function result = Newton(x0, e1, e2, N, f)
% 利用牛顿迭代法求f(x)=0的根
%   输入：初值x0，精度e1,e2，最大迭代次数N
%   输出：方程f(x)=0根x*的近似值或计算失败标志
n = 1;
while n <= N
    F = double(subs(f, symvar(f), x0));
    DF = double(subs(diff(f), symvar(f), x0));
    if abs(F) < e1
        result = x0;
        return;
    end
    if abs(DF) < e2
        result = 'Iteration failed!';
        return;
    end
    x1 = x0 - F / DF;
    Tol = abs(x1 - x0);
    if abs(Tol) < e1
        result = x1;
        return;
    end
    n = n + 1;
    x0 = x1;
end
result = 'Iteration failed!';
end
