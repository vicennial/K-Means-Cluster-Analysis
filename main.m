clear; clc;
figure;
max_iter=1000;
fprintf('Loading and Visualizing Data ...\n');
load('data','X');
assert(isempty(X)==0 && size(X,2)==2,'Data must be a N x 2 matrix where each row contains X and Y coordinate');
hold on;
scatter(X(:,1),X(:,2),200,'.');
fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf('Generating Optimal K-Means Locations and Plotting Locations...\n');
k=3;
Means=GenRandom(X,k);
pres=zeros(size(X,1),1);
res=ones(size(X,1),1);
for i=1:max_iter
    pres=res;
    [res,New_Means]=K_Means(X,Means,k);
    if isequal(New_Means,Means)
        break
    end
    Means=New_Means;
end
plot(Means(:,1),Means(:,2),'rx','MarkerSize',50);
fprintf('Program paused. Press enter to continue.\n');
pause;
fprintf('Plotting Data with each cluster having unique colour...\n');
hold off;
figure;
hold on;
for i=1:k
    scatter(X(res==i,1),X(res==i,2),50,rand(1,3),'filled');
end
