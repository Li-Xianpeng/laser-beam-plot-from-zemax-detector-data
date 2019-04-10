%%--gauss beam plot v1.0--
%%--������----------------
%%--20190308--------------
%%-----------------------------------------------
%��mathlab�Դ���������Ϲ��߻����Ϻ��˫����ϵ��
%����ϵ�����Ƹ�˹����
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




