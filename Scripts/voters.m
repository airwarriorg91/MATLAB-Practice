function f = voters(database, varargin)
    if (nargin-1 ~= 0 && rem(nargin-1, 2) == 0)
        %for even and non-zero number of input arguments
        flag = false;
        for cnt = nargin-1:-2:2
            namecheck = isstring(varargin{cnt-1})||ischar(varargin{cnt-1}); %checks if the name input is string or char
            IDcheck = isinteger(varargin{cnt})||isfloat(varargin{cnt}); %checks if the ID input is a integer
            if(namecheck && IDcheck)
                row = struct();
                row.Name = string(varargin{cnt-1});
                row.ID = double(varargin{cnt});
                temp(cnt/2)=row;
            else
                flag = true;
                break;
            end
        end
        if (isempty(database)&& ~flag)
            f = temp;
        elseif ~flag
            f = [database, temp];
        else
            f = database;
        end
    else
        %for odd or zero number of input arguments
        f = database;
    end
end