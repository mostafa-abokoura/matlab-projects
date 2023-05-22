function edg = edgy(m)
    % Comments is for size of m
    m = double(m); 
    edg = zeros(size(m) - 2);       % mmkn t4el (-2)
    Mx = [-1 0 1; -2 0 2; -1 0 1]; 
    My = [-1 -2 -1; 0 0 0; 1 2 1]; 
    
    for i = 1:size(edg, 1)          % 7d hna b2a (-2)
        for j = 1:size(edg, 2)      % w hna brdo (-2)  
            Sx = sum(sum(Mx.*m(i:i+2, j:j+2))); 
            Sy = sum(sum(My.*m(i:i+2, j:j+2))); 

            edg(i, j) = sqrt(Sx.^2 + Sy.^2);  %hna el index (i+1, j+1)  
        end
    end
    edg = uint8(edg);
end