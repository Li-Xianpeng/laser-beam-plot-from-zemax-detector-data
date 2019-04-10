%%--beam_width-----
%%--李先鹏----------
%%--20190308-------
%%--------------------------------------------------------
%由Zemax获得光轴方向的光束能量密度分布数据，导入工作区，
%根据光束宽度的光强二阶矩定义计算光束宽度
%%--------------------------------------------------------
function []=beam_width(step,L,a)
[m,n]=size(a);
deta1=zeros(1,n);
deta2=zeros(1,n);
d=zeros(1,n);
w=zeros(1,n);
x=zeros(1,n);
for i=1:n
    P=0;
    E1=0;
    E2=0;
    for j=1:m
        P=P+a(j,i);
        E1=E1+j*a(j,i);
    end
    deta1(1,i)=E1/P;
    for j=1:m
        E2=E2+a(j,i)*(j-deta1(1,i))^2;
    end
    deta2(1,i)=E2/P;
    d(1,i)=4*sqrt(deta2(1,i))*step;
    w(1,i)=d(1,i)*0.5;
    x(1,i)=i*step-(L*0.5+step*0.5);
end
%figure( 'Name', 'BeamWidth' )
%plot(x,d);
assignin('base','x',x);
assignin('base','d',d);
assignin('base','w',w);




