function [res] = LLL(v)
%   LLL格基约减
%   其中v的每一行作为一个行向量
%   算法多次调用基础过程，直到得到定值
a=lllcontrol(v);
b=lllcontrol(a);
while a~=b
    a=b;
    b=lllcontrol(b);
end
res = b;
end

