function d = reversal(v)

if length(v) <= 1
    d = v;
else 
    v([1 end]) = v([end 1]);
    v(2:end-1) = reversal(v(2:end-1));   
    d = v;
end

end