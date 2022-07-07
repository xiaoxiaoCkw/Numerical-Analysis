function result = Romberg(a, b, e, f)
% 利用龙贝格(Romberg)积分法计算f(x)在区间[a,b]上的定积分.
%   输入：a, b, e, f
%   输出：龙贝格T-数表
h = b - a;
i = 2;
T = zeros(20, 20);
T(1, 1) = h * (subs(f, symvar(f), a) + subs(f, symvar(f), b)) / 2;
fprintf('%f\n',T(1, 1));
while i > 0
    ii = 2^(i-2);
    sum = 0;
    for k = 1:ii
        sum = sum + subs(f, symvar(f), a + (k - 0.5) * h);
    end
    T(1, i) = T(1, i-1) / 2 + h * sum / 2;
    fprintf('%f ', T(1, i));
    for m = 2:i
        k = i - m + 1;
        T(m, k) = (4^(m-1) * T(m-1, k+1) - T(m-1, k)) / (4^(m-1) - 1);
        fprintf('%f ', T(m, k));
    end
    fprintf('\n');
    if abs(T(i, 1) - T(i-1, 1)) < e
        result = T(i, 1);
        return;
    end
    h = h / 2;
    i = i + 1;
end

