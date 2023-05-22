function d = name_value_pairs(varargin)
    acc = 1;
    if (nargin == 0) || (rem(nargin, 2) ~= 0)
        acc = 0;
    elseif iscell_vec(varargin)
        acc = 0;
    end
    
    if acc == 1
        mid = nargin/2;
        d = cell(2, mid);
        for ii = 1 : 2 : nargin
            d{ii} = varargin{ii};
            d{ii + 1} = varargin{ii+1};
        end
        d = d';
    else
        d = {};
    end
end

function b = iscell_vec(c)
    b = 0;
    for ii = 1 : 2 : length(c)
        if ~ischar(c{ii})
            b = 1;
            break;
        end
    end
end




