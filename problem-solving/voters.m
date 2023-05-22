function d = voters(database, varargin)
    if (rem(nargin-1, 2) ~= 0) || (nargin-1 == 0)
        d = database;
    elseif is_valid(varargin)
        d = database;
    else
        d = struct('Name', [], 'ID', []);
        for i = 1 : 2 : nargin-1
            d(round(i/2)) = struct('Name', string(varargin{i}), 'ID', varargin{i+1});
        end
        d = [database d];        
    end
end

function b = is_valid(c)
    b = 0;
    for ii = 1 : 2 : length(c)
        if (~ischar(c{ii}) && ~isstring(c{ii})) || (~isinteger(c{ii+1}) ...
                && ~isa(c{ii+1}, 'double')) || c{ii+1}/floor(c{ii+1}) ~= 1
            b = 1;
            break;
        end
    end
end