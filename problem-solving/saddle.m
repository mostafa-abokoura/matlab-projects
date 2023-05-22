function m = saddle(v)
    m = [];
    for i = 1 : size(v, 1)
        for j = 1 : size(v, 2)
            if v(i, j) >= max(v(i, :)) && v(i, j) >= max(v(:, j))
                m(end+1, :) = [i j];
            end
        end
    end        
end