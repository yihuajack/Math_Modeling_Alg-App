clc,clear
xishu=[1 -1 2 -3]; % 多项式是用向量定义的，系数从高次幂到低次幂排列
x0=roots(xishu)
syms x
x0=solve(x^3-x^2+2*x-3) % 求函数零点的符号解
x0=vpa(x0,5) % 化成小数格式的数据
y=@(x)x^3-x^2+2*x-3;
x=fsolve(y,rand) % 只能求给定初始值附近的一个零点