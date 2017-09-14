function ans=DB_Index(X,Means,res,k)
temp=compactness(X,Means,res,k);
p=zeros(k,1);
for i=1:k
    temp(i,1)=temp(i,1)*sqrt(size(X(res==i,1),1));
end
for i=1:k
    maxval=0;
    for j=1:k
        if i==j
            continue;
        end
        val=(temp(i,1)+temp(j,1))/(norm(Means(i,1)-Means(j,1)));
        maxval=max(val,maxval);
    end
    p(i,1)=maxval;
end
ans=sum(p)/size(p,1);
        
            