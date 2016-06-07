function [trueeigen, time] = sgdpca(X)
[d,n]=size(X);
tw=rand(d,1);
wm=zeros(5000,d);
%tu=zeros(d,1);
%m=n;
rb=0;
eta=1e-5;
wt=tw;
tic; 
for s=1:6000
    it=randi(n);
    wp=wt+eta*(X(:,it)*X(:,it)'*wt);
    wn=1/norm(wp)*wp;
    wt=wn;
    time(s)=toc;
    wm(s,:)=wt';
end
for s=1:5000
    trueeigen(s)=wm(s,:)*(X*X')*wm(s,:)';
end
end

