function [gkleigen, time] = gklpca(X)
d =size(X,1);
A=X*X';
t=10;
v1=rand(d,1);
v1=v1/norm(v1);
beta0=0;
betak=beta0;
vk=v1;
B=zeros(t,t);
uk=zeros(d,1);
tic;
for k=1:t
    w=A*vk-betak*uk;
    alphak=norm(w);
    uk=w/alphak;
    w=A'*uk-alphak*vk;
    betak=norm(w);
    vk=w/betak;
    B(k,k)=alphak;
    B(k,k+1)=betak;
end
%B=[B;zeros(1,t+1)];
B=B(1:t,1:t);
[~,S,~]=svd(B);
gkleigen = S(1);
time = toc;
end
