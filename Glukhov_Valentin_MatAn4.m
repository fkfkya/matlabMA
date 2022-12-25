
%% Задание1
figure;
hold on, grid on;
t = 0:0.01:100;
x = exp(-abs(t-100)/100).*sin(t);
y = exp(-abs(t-100)/100).*cos(t);
z = t;
plot3(x,y,z)
view(120,30)
%% Задание2
figure;
hold on, grid on;
u = [-4*pi:0.1*pi:4*pi]';
v = [-4*pi:0.1*pi:4*pi];
x = 0.5*u*cos(v);
y = 0.5*u*sin(v);
z = u*ones(size(v));
hidden on;
mesh(x,y,z)
view(120,30)
%% Задание3
figure;
hold on, grid on;
u = [-2*pi:0.1*pi:2*pi]';
v = [-2*pi:0.1*pi:2*pi];
x = cos(u).*cos(v);
y = 0.6*cos(u).*sin(v);
z = 0.8*sin(u).*ones(size(v));
mesh(x,y,z)
hidden off;
view(120,30)
%% Задание4
t = 0:0.2:2;
x = 0.5*t;
y = 0.8*t.*(1-0.5*t);
ux(1:length(x)) = 0.5;
uy = 0.8*(1-t);
fign1 = figure;
hold on,grid on,axis equal;
quiver(x,y,ux,uy,0)
fign2 = figure;
hold on,grid on,axis equal;
quiver(x,y,ux,uy,1.5)
fign3 = figure;
hold on,grid on,axis equal;
quiver(x,y,ux,uy,0.3)
%% Задание5
figure(fign1);
x = 0.5*t;
y = 0.8*t.*(1-0.5*t);
comet(x,y)
figure(fign2);
x = 0.5*t;
y = 0.8*t.*(1-0.5*t);
comet(x,y)
figure(fign3);
x = 0.5*t;
y = 0.8*t.*(1-0.5*t);
comet(x,y)
%% Задание6
figure;
grid on, axis equal;
compass(ux,uy)
%% Задание7
figure;
hold on, grid on, axis equal;
feather(ux,uy)
%% Задание8
figure;
grid on, axis equal;
u = (-pi:pi/15:pi)';
v = -pi:pi/15:pi;
x = sin(u)*cos(v)*2;
y = sin(u)*sin(v)*2;
z = cos(u)*ones(size(v))*2;
surf(x,y,z)
[U,V,W] = surfnorm(x,y,z);
hold on
quiver3(x,y,z,U,V,W,4,'k')
%% Задание9
figure;
hold on, grid on, axis equal;
[x,y] = meshgrid(-2:0.05:2,-2:0.05:2);
a = 1;
b = 1;
z = 0.5*x.^2/a^2-0.5*y.^2/b^2;
surf(x,y,z)
colormap('winter');
[U,V,W] = surfnorm(x,y,z);
hold on
quiver3(x,y,z,U,V,W,4)
view(120,30)
%% Задание10
figure;
hold on, grid on, axis equal;
[x,y] = meshgrid(-2:0.05:2,-2:0.05:2);
a = 1;
b = 1;
c = 1;
z = sqrt(c^2*(1+x.^2/a^2+y.^2/b^2));
surf(x,y,z)
colormap('winter');
[U,V,W] = surfnorm(x,y,z);
hold on
quiver3(x,y,z,U,V,W,4)

z = -sqrt(c^2*(1+x.^2/a^2+y.^2/b^2));
surf(x,y,z)
colormap('summer');
[U,V,W]=surfnorm(x,y,z);
hold on
quiver3(x,y,z,U,V,W,4)
view(120,30)
%% Задание11
figure;
hold on, grid on, axis equal;
[u,v] = meshgrid(0:0.1:3,0:0.1:3);
x = cos(u).*cos(v);
y = sin(u).*sin(v);
z = u.*v;
surf(x,y,z)
colormap('spring');
[U,V,W] = surfnorm(x,y,z);
hold on
quiver3(x,y,z,U,V,W,4)
view(-17,13)
%% Задание12
figure;
hold on, grid on, axis equal;
xl = 1; xr = 3;
yl = -1; yr = 1;
zl = 0; zr = 2;
[x,y,z] = meshgrid(xl:0.05:xr,yl:0.05:yr,zl:0.05:zr);
u = x./sqrt(x.^2+y.^2+z.^2);
v = y./sqrt(x.^2+y.^2+z.^2);
w = z./sqrt(x.^2+y.^2+z.^2);
[cx,cy,cz] = meshgrid(xl:(xr-xl)/3:xr,yl:(yr-yl)/3:yr,zl:(zr-zl)/7:zr);
hc = coneplot(x,y,z,u,v,w,cx,cy,cz,4);
set(hc,'FaceColor','g','EdgeColor','none')
axis tight;
view(31,28);
light;
xlabel('x')
ylabel('y')
zlabel('z')