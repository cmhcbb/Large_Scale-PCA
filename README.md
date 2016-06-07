# Large_Scale-PCA
Final project of ECS 231 Spring 2016  

The codes are MATLAB scripts.  

There are 3 functions named with vrpca, sgdpca, gklpca corresponding to VR-PCA method, SGD method, Golub-Kahan-Lanczos method.  

The function is like this:  

[vreig,vrtime]=vrpca(X), where vreig is the largest eigvalue per iteration, vrtime is the time per iteration, X is the matrix we are deriving.  


The dataset MNIST is attached, however you should turn it into double format using im2double() command in Matlab.
