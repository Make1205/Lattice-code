function result = goodbasis(N,v,h)
% 随机生成1组优质基
% N为基向量坐标绝对值上限
% v为向量个数
% h为hadamard比率下限
result = unidrnd(2*N,v)-N;
while H(result)<h
    result= unidrnd(2*N,v)-N;
end
end

