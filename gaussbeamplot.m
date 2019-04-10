%%--gauss beam plot v1.0--
%%--李先鹏----------------
%%--20190308--------------
%%-----------------------------------------------
%由mathlab自带的曲线拟合工具获得拟合后的双曲线系数
%根据系数绘制高斯光束
%%-----------------------------------------------
function[] = gaussbeamplot(L,d0,theta)
x=(-L*0.5):0.01:(L*0.5);
N=length(x(:));
y1=zeros(1,N);
y2=zeros(1,N);

for i=1:N
    
    y1(i)=0.5*sqrt(d0^2+theta^2*x(i)^2);
    y2(i)=-0.5*sqrt(d0^2+theta^2*x(i)^2);
end
figure( 'Name', 'gaussBeam' )
plot(x,y1);
hold on;
plot(x,y2);
hold on;




