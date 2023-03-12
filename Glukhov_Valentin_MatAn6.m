%% Задание1
clc;
p1 = [1 1 0 0 1 3];
p2 = [1 2 1 -10];
pr = conv(p1,p2);
disp(poly2sym(pr));
%% Задание2
clc;
p1 = [1 0 0 1 0 0 1 0 -1];
p2 = [1 0 2 -1];
[d, r] = deconv(p1,p2);
disp(poly2sym(d));
%% Задание3
clc;
p1 = [1 0 1 1 -3 -2 -16 -1];
p2 = [1 0 -116 1];
[d,r] = deconv(p1,p2);
disp(poly2sym(r));
%% Задание4
clc;
p1 = [1 0 0 1 4 2 3 0 1 3];
p2 = [0 0 0 0 3 0 0 2 -3 -9];
summ = p1 + p2;
disp(poly2sym(summ));
%% Задание5
clc;
p1 = [0 1 2 0 0 4 2 0 3 3];
p2 = [1 0 0 0 0 0 0 0 2 0];
diff = p1 - p2;
disp(poly2sym(diff));
%% Задание6
clc;
p = [2 3 0 1 -10 -1 1024];
ans = polyder(p);
disp(poly2sym(ans));
%% Задание7
clear;
clc;
figure; grid on; hold on;
x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
p3 = polyfit(x,y,3);
p4 = polyfit(x,y,4);
p5 = polyfit(x,y,5);
p6 = polyfit(x,y,6);
p7 = polyfit(x,y,7);
xi = x(1):0.02:x(end);
P3 = polyval(p3,xi);
P4 = polyval(p4,xi);
P5 = polyval(p5,xi);
P6 = polyval(p6,xi);
P7 = polyval(p7,xi);
subplot(3,2,1)
plot(x,y)
legend('f(x)')
subplot(3,2,2)
plot(xi,P3)
legend('3 ст')
subplot(3,2,3)
plot(xi,P4)
legend('4 ст')
subplot(3,2,4)
plot(xi,P5)
legend('5 ст')
subplot(3,2,5)
plot(xi,P6)
legend('6 ст')
subplot(3,2,6)
plot(xi,P7)
legend('7 ст')
figure; grid on; hold on;
plot(xi,P3,'b-.', xi,P4,'g-.', xi,P5,'k-.', xi,P6,'r-.', xi,P7,'c-.');
plot(x,y, linewidth = 3);
legend("n=3", "n=4", "n=5", "n=6", "n=7", "f(x)", location = "NorthWest");
axis([0 2.2 -8 13]);
%% Задание8
clear; clc;
figure; grid on; hold on;
x = [0.1 0.3 0.4 0.6 0.7 0.9 1.0 1.3 1.6 2.0];
y = [-3 -5 -2 -1 0 1 3.5 6 2.5 8];
plot(x,y, lineWidth = 4);
xi = [x(1):0.01:x(10)];
ynear = interp1(x,y,xi,'nearest');
ylinear = interp1(x,y,xi,'linear');
yspline = interp1(x,y,xi,'spline');
ypchip = interp1(x,y,xi,'pchip');
plot(xi,ynear,'b--', xi,ylinear,'g--', xi,yspline,'k--', xi,ypchip,'r--');
legend("f(x)", "nearest", "linear", "spline", "pchip", location = "NorthWest");
%% Задание9
clear; clc;
figure; hold on; grid on;
[x,y] = meshgrid(0:0.2:1);
z = sin(3*pi*x) .* sin(3*pi*y) .* exp(-x.^2-y.^2);
subplot(3,2,1)
surfl(x,y,z)
title('table func')
[xi,yi] = meshgrid(0:0.02:1);

near = interp2(x,y,z,xi,yi,'nearest');
bilin = interp2(x,y,z,xi,yi,'bilinear');
bicub = interp2(x,y,z,xi,yi,'bicubic');
splin = interp2(x,y,z,xi,yi,'spline');

subplot(3,2,2)
surf(xi,yi,near)
title('near')

subplot(3,2,3)
surf(xi,yi,bilin)
title('bilinear')

subplot(3,2,4)
surf(xi,yi,bicub)
title('bicubic')

subplot(3,2,5)
surf(xi,yi,splin)
title('spline')
