function [res] = lllcontrol(v)
%LLLCONTROL 基础lll格基约减过程
n=size(v);
n=n(1);

k=2;
while k<=n
    V=orthogonal(v(1:k,:));
    for j=1:k-1
        u=dot(v(k,:),V(j,:))/(norm(V(j,:))^2);
        v(k,:)=v(k,:)-round(u)*v(j,:); %size 条件
    end
    %% 
    u=dot(v(k,:),V(k-1,:))/(norm(V(k-1,:))^2);
    if norm(V(k,:))^2>=(3/4-u^2)*norm(V(k-1,:))^2 % lovasz条件
        k=k+1;
    else
        tmp=v(k-1,:); %交换
        v(k-1,:)=v(k,:);
        v(k,:)=tmp;
        k=max(k-1,2);
    end

end
res=v;
return;

end

