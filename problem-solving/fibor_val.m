function d = fibor_val(num)

if num <= 2
    d = 1;
elseif num <= 7
    d = fibor_val(num - 2) + fibor_val(num - 1);
else
    d = (13*fibor_val(num - 6)) + (8*fibor_val(num - 7));
end

end