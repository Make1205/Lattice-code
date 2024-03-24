function [res] = row_norm(m)
% 计算一个矩阵的行范数
n=size(m);
res=zeros(n(1),1);
for i=1:n(1)
    res(i,1)=norm(m(i,:));
end
end

