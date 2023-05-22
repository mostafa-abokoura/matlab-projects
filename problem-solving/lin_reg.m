function [a, b] = lin_reg(x, y)
    if length(y ./ x) == 1
        a = y ./ x;
        b = 0;
    else
        x1 = ones(length(x), 2);
        x1(:, 1) = x;
        s = x1\(y');
        a = s(1);
        b = s(2);
    end
end