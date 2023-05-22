function d = grader(f1, f2, varargin)
    d = 5==5;
    for i = 1 : nargin-2
       d = d && isequal(f1(varargin{i}), f2(varargin{i}));
    end
end