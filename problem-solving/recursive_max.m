function d = recursive_max(v)

if v(1) == v
    d = v(1);
else
    m = recursive_max(v(2:end));
    if v(1) >= m
        d = v(1);
    else
        d = m;
    end
end
   

end