clc,clear
a=textread('data1.txt');
y0=a(:,[2,7]); % 提出因变量y的数据
y0=nonzeros(y0); % 去掉最后的零元素，且变成列向量
x0=[a(:,[3:5]);a([1:end-1],[8:10])]; % 由分块矩阵构造因变量数据的2列矩阵
canshu0=rand(2,1); % 拟合参数的初始值是任意取的
% 非线性拟合的答案是不唯一的，下面给出拟合参数的上下界，
lb=zeros(2,1); % 这里是随意给的拟合参数的下界,无下界时，默认值是空矩阵[]
ub=[20;2]; % 这里是随意给的上界，无上界时，默认值是空矩阵[]
canshu=lsqcurvefit(@fun1,canshu0,x0,y0,lb,ub)