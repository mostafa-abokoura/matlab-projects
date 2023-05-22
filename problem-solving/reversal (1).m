function d = reversal(v)
    if rem(length(v), 2) == 0
        v1 = v(1:length(v)/2);
        v2 = v((length(v)/2)+1 : end);
        if length(v1) == 1
            d = v([end 1]);
        else
            d = [reversal(v2) reversal(v1)];
        end
    else 
        v1 = v(1 : fix(length(v)/2));
        v2 = v((fix(length(v)/2))+2 : end);
        if length(v1) == 1
            d = v([end 2 1]);
        else
            d = [reversal(v2) v(fix(length(v)/2)+1) reversal(v1)];
        end
        
    end    
end