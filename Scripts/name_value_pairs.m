function f = name_value_pairs(varargin)
    if (nargin ~= 0 && rem(nargin, 2) == 0)
        %for even and non-zero number of input arguments
        f = cell(nargin/2, 2);
        i = 1;
        for cnt = 1:2:nargin
            if(ischar(varargin{cnt}))
                f{i,1} = varargin{cnt};
                f{i,2} = varargin{cnt+1};
                i = i+1;
            else
                f = {};
                break;
            end
        end
    else
        %for odd or zero number of input arguments
        f = {};
    end

end