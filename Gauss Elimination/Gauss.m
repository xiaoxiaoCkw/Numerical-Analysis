function result = Gauss(n, A, b)
% 利用高斯列主元消元法求给定的n阶线性方程组Ax=b的解或者确定该线性方程组是奇异的.
%   输入：n, a_ij, b_i, i,j=1,2,…,n
%   输出：线性方程组Ax=b的近似解x_i, i=1,2,…,n

for k = 1:n-1
    max = abs(A(k, k));
    p = k;
    for j = k+1:n
        if abs(A(j, k)) > max
            max = abs(A(j, k));
            p = j;
        end
    end
    if A(p, k) == 0
        result = 'Singular matrix!';
        return ;
    end
    if p ~= k
        A([k p], :) = A([p k], :);
        b([k p], :) = b([p k], :);
    end
    for i = k+1:n
        m_ik = A(i, k)/A(k, k);
        for j = k+1:n
            A(i, j) = A(i, j) - A(k, j) * m_ik;
        end
        b(i) = b(i) - b(k) * m_ik;
    end
end
if A(n, n) == 0
    result = 'Singular matrix!';
    return ;
end
result = zeros(n, 1);
result(n, 1) = b(n)/A(n, n);
for k = n-1:-1:1
    sum = 0;
    for j = k+1:n
        sum = sum + A(k, j) * result(j, 1);
    end
    result(k, 1) = (b(k) - sum)/A(k, k);
end
end
