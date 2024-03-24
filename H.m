function [result] = H(m)
    %FUNCTION 此处显示有关此函数的摘要
    %   此处显示详细说明
    n=size(m);
    n=n(1);
    product=1;
    for i=1:n
        product=product*norm(m(i,:));
    end
    result=(abs(det(m))/product)^(1/n);
end

