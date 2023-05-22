function fh = poly_fun(p)
    i = length(p) + 1;
    function polynomial = poly(x)
        i = i - 1;
        if i == 1
            polynomial = p(1);
        else
            polynomial = p(i).*x.^(i-1) + poly(x);
        end
    end
    
    fh = @poly;
end