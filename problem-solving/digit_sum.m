function d = digit_sum(num)

if num < 10
    d = num;
else
    d = digit_sum(rem(num, 10)) + digit_sum(fix(num/10));
    
end

end