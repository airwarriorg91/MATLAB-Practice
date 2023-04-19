function [ res ] = iscomplex( A )
%ISCOMPLEX check if input A is complex array

res = (strcmp(class(A),'double') && ~any(isreal(A)));

end

