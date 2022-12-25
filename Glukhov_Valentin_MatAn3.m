%% Задание1
figure;
hold on, grid on;
x = -2:0.01:2;
y = exp(-x).*sin(10*x);
plot(x,y)
%% Задание2
figure;
subplot(1,2,1);
hold on, grid on;
x = 0:0.001:5;
y = exp(-x).*sin(10*x);
area(x,y)
comet(x,y)
subplot(1,2,2);
hold on, grid on;
z = x;
view(-58,-53);
comet3(x,y,z,0.9)
%% Задание3
figure;
pie3([25 10 20 35 10],[0 1 0 0 1])
view(20,30)
%% Задание4
figure;
subplot(1,2,1);
hold on, grid on;
x = 0:0.01:1;
y = exp(-x).*(sin(x)+0.1*sin(100*pi*x));
plot(x,y,'red')
subplot(1,2,2);
hold on, grid on;
x = 0:(1/99):1;
y = exp(-x).*(sin(x)+0.1*sin(100*pi*x));
plot(x,y,'green')
%% Задание5
figure;
hold on;

subplot(1,3,1)
x = 0:0.01:10;
f = log(2*x);
g = log(x).*sin(2*x);
loglog(x,f,'blue')
hold on; grid on;
loglog(x,g,'red')
legend('f(x)','g(x)','Location','northwest')
xlabel('LogX');
ylabel('LogY');
title('LogLog')
hold off;

subplot(1,3,2)
semilogx(x,f,'blue')
hold on; grid on;
semilogx(x,g,'red')
legend('f(x)','g(x)','Location','northwest')
xlabel('LogX');
ylabel('Y');
title('SemiLogX')
hold off;

subplot(1,3,3)
semilogy(x,f,'blue')
hold on; grid on;
semilogy(x,g,'red')
hold off;
legend('f(x)','g(x)','Location','northwest')
xlabel('X');
ylabel('LogY');
title('SemiLogY')
hold off;
%% Задание6
figure;
hold on, grid on, axis equal;
t = -pi:0.01:pi;
x = 2.*sin(t);
y = 4.*cos(t);
plot(x,y)
%% Задание7
figure;
hold on,grid on;
[x,y] = meshgrid(-3:0.05:3,-3:0.05:3);
z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1-x.^2).*y.*(1-x);
mesh(x,y,z);
view(135,45)
hidden off;
%% Задание8
figure;
hold on,grid on;
[x,y] = meshgrid(-3:0.05:3,-3:0.05:3);
z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1-x.^2).*y.*(1-x);
contour3(x,y,z,-3:0.01:3)
colorbar
view(125,35)
%% Задание9
figure;
hold on,grid on;
[x,y] = meshgrid(-3:0.05:3,-3:0.05:3);
z = 4*sin(2*pi*x).*cos(1.5*pi*y).*(1-x.^2).*y.*(1-x);
colormap('summer');
surfl(x,y,z,[-60,45])
view(120,30)
%% Задание10
figure;
hold on, grid on;
[x,y] = meshgrid(-1:0.05:1,-1:0.05:1);
z = (sin(x).^2+cos(y).^2).^(x.*y);
subplot(2,2,1)
mesh(x,y,z)
subplot(2,2,2)
surf(x,y,z)
shading flat;
subplot(2,2,3)
contour3(x,y,z,-2:0.01:2)
subplot(2,2,4)
surfl(x,y,z,[135,45])