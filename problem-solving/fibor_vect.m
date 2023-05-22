function d = fibor_vect(num, d)

if nargin == 1 && num ~= 1
    d = fibor_vect(num-1, [1, 1]);
elseif nargin == 1 && num == 1
    d = 1;
elseif num > 1
    d = fibor_vect(num-1,[d, d(end-1) + d(end)]);
elseif num < 1
    d = 0;
end

end


