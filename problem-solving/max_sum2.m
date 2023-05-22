function [summa, index] = max_sum2(v,n)
o= sort(v,'descend');
m= -inf;
k = length(v);
if n > length(v)
    summa = 0;
    index = -1 ;
elseif n == k
    summa = sum(v);
    index = 1;
else
    for i = 1 : k-n+1
        j = i+n-1;
        ss = sum(v(i:j));
        if ss > m
            index = i;
            summa =ss;
            m =ss;
        end
    end
end
        