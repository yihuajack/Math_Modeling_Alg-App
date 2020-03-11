clc,clear
dxfun3=@(t,x)[-x(1)-x(1)*x(2)+x(2)*x(3)
    2*x(1)*x(2)-x(2)*x(3)-x(2)^2
    x(1)+2*x(2)+x(3)-1]; % 定义标准型右端项的匿名函数
M=[1,0,0;0,1,0;0,0,0];
x0=[1,0.5,-1];
op=odeset('Mass',M); % 定义options参数的取值
[t,x]=ode15s(dxfun3,[0,30],x0,op);
plot(t,x(:,1),'.-',t,x(:,2),'<-',t,x(:,3),'P-')
legend('x_1','x_2','x_3','Location','Best')