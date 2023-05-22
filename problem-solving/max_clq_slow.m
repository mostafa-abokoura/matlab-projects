function clique = max_clq_slow(g, clique)
    if nargin < 2
        clique = [];
    end
    max_clq = clique;
    if isempty(clique)
        for i = 1:length(g)
            clq = max_clq_slow(g, i);
            if length(clq) > length(max_clq)
                max_clq = clq;
            end
        end
        
    else
       for node = 1:length(g)
           if isempty(find(node == clique))
               if check_clique(clique, node, g)
                   clq = max_clq_slow(g, [clique node]);
                   if length(clq) > length(max_clq)
                       max_clq = clq;
                   end
               end
           end
       end
    end
    clique = max_clq;
end

function ok = check_clique(clq, node, g)
    ok = false;
    for i = 1:length(clq)
        if isempty(find(clq(i) == g{node})) || isempty(find(node == g{clq(i)}))
            return;
        end
    end
    ok = true;
end