clc, clear
a=[7.0	10.5	13.0	17.5	34.0	40.5	44.5	48.0	56.0
44	45	47	50	50	38	30	30	34
44	59	70	72	93	100	110	110	110
61.0	68.5	76.5	80.5	91.0	96.0	101.0	104.0	106.5
36	34	41	45	46	43	37	33	28
117	118	116	118	118	121	124	121	121
111.5	118.0	123.5	136.5	142.0	146.0	150.0	157.0	158.0
32	65	55	54	52	50	66	66	68
121	122	116	83	81	82	86	85	68];
x0=a(1:3:end,:); x0=x0'; x0=x0(:); %提取点的横坐标
y1=a(2:3:end,:); y1=y1'; y1=y1(:); %提出下边界的纵坐标
y2=a(3:3:end,:); y2=y2'; y2=y2(:);
plot(x0,y1,'*-') %画下边界曲线
hold on
plot(x0,y2,'.-') %画上边界曲线
L1=trapz(x0,sqrt(1+gradient(y1,x0).^2)) %计算下边界的长度
L2=trapz(x0,sqrt(1+gradient(y2,x0).^2)) %计算上边界的长度
L=L1+L2 %计算边界的长度
S=trapz(x0,y2-y1) %计算近似面积
