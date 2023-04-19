function f = grader(f1, f2, varargin)
    flag = true;
    for cnt = 1:length(varargin)
        r1 = f1(varargin{cnt});
        r2 = f2(varargin{cnt});
        if(~isequal(r1, r2))
            flag=false;
            break;
        end
    end
    f = flag;
end