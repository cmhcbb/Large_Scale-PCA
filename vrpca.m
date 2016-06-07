function [vreigen, time] = vrpca(X)

[d,n]=size(X);
tw=rand(d,1);
tu=zeros(d,1);
wm=zeros(5,d);
rb = 0; 
m = n; 
for i = 1:n
    temp1 = norm(X(:, i));
    rb = rb + temp1;
end

eta = 1/(rb * sqrt(n));
wt = tw; 
tic; 
for s = 1:3
    for i = 1:n
        temp = X(:,i)*X(:,i)'*tw;
        tu = tu + temp; 
    end
    
    for t = 1:m
        it = randi(n);
        wp=wt+eta*(X(:,it)*(X(:,it)'*wt-X(:,it)'*tw)+tu);
        wn=1/norm(wp)*wp;
        wt=wn; 
    end
    
    tw = wn; 
    tu = zeros(d, 1); 
    time(s)=toc; 
    wm(s,:)=wt';
end
for s=1:5
    vreigen(s) = wm(s,:)*(X*X')*wm(s,:)';
end
end