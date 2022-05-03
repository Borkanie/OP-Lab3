[X1,X2]=meshgrid(-5:0.1:5,-5:0.1:5);
contour(X1,X2,fl3(X1,X2))
figure
surf(X1,X2,fl3(X1,X2))
%%
syms x1 x2
eq=[0==3*x1^2+12*x1^3+31*x2;
    0==31*x1+2*x2]
x1=0;
H=[6*x1+36*x1^2 31; 31 2];
r1=eig(H);
x1=6.2041;
H=[6*x1+36*x1^2 31; 31 2];
r2=eig(H);
x1=-6.4541;
H=[6*x1+36*x1^2 31; 31 2];
r3=eig(H);
r1
r2
r3
%%
con=@(x1,x2)21*x1-3*x2-5;
lR=@(x2)(3*x2+5)/21;
figure(1)
subplot(2,1,1)
contour(X1,X2,fl3(X1,X2))
hold on
plot(X2,lR(X2))
hold on
plot(-0.07,0.2281,'*')
subplot(2,1,2)
surf(X1,X2,fl3(X1,X2))
x1=0.22;
H=[6*x1+36*x1^2 31 21; 31 2 -3;21 -3 0]
z=11