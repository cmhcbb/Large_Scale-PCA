C=[test6;test7;test8];
%A=eval(['train',num2str(1)]);
X=im2double(C);
[vreig,vrtime]=vrpca(X);
[sgeig,sgtime]=sgdpca(X);