function p= GenRandom(X,k)
xmin=min(X(:,1));
xmax=max(X(:,1));
ymin=min(X(:,2));
ymax=max(X(:,2));
r1=xmin+(xmax-xmin).*rand(k,1);
r2=ymin+(ymax-ymin).*rand(k,1);
p=[r1 r2];
end
