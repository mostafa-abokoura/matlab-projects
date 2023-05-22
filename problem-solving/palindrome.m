function d = palindrome(s)
if length(s) == 1
    d = 1==1;
elseif length(s) == 2
    d = s(1)==s(2);
else
    d = s(1)==s(end) && palindrome(s(2:end-1));


end