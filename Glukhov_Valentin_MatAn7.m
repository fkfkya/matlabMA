%% Задание1
clear; clc;
f = @(x) sin(x) - x.^3 .* cos(x);
quad(f, -4, 0, 1.0e-05)
%% Задание2
clear; clc;
f = @(x) x.^3 + 1;
quad(f, 2, 5)
%% Задание3
clear; clc;
f = @(x, y) exp(-x) .* sin(y);
dblquad(f,-pi,pi,0,3)
integral2(f,-pi,pi,0,3)
%% Задание4
clear; clc;
z = @(x, y) sin(x) .* sin(y) .* (1 - x.^2) .* x .* (1 - y);
 % dblquad(z,-2,2,-2,2)
integral2(z,-2,2,-2,2)
[x,y]=meshgrid(-2:0.05:2);
f = sin(x) .* sin(y) .* (1 - x.^2) .* x .* (1 - y);
surf(x,y,f);
view(0,2);
%% Задание5
clear; clc;
f = @(x,y,z) exp(-x) .* sin(y) .* cos(z);
triplequad(f,-pi,pi,-2*pi,pi,0,2)
integral3(f,-pi,pi,-2*pi,pi,0,2) 
%% Задание6
clear; clc;
f = @(x,y,z) exp(x).*(sin(y).^2)+exp(-x).*(cos(y).^2)+sin(y).*cos(x).*z ;
integral3(f,-2*pi,2*pi,-2*pi,2*pi,-1,1) 
%% Задание7
clear; clc;
f = @(x) 1 ./ x;
quad(f,0,1)
quadl(f,0,1)
quadgk(f,0,1)
%% Задание8
clear; clc;
f = @(x,y,a,b) a * cos(x) .* x.^2 + b * sin(y) .* y.^2;
integral2(@(x,y)f(x,y,20,7), -2,2,-2,2)
%% Задание9
clear; clc;
f = inline('a * x.^2 + x + 1', 'x', 'a');
quad(f, 0, 10, 1.0e-05, 0, 3)
%% Задание10
clear; clc;
figure; grid on; hold on;
fplot(@F, [0, pi])
%% Задание11
clc;
f = @(x) (cos(x - sqrt(2)) .* exp(2 * sin(x)) - 1);
figure; grid on; hold on;
fplot(f, [-2 6]);
quad(f, fzero (f,0), fzero (f,3))
%% Задание12
clear, clc;
figure; hold on; grid on;
f = @(x) sin(x) - x.^2 .* cos(x);
fplot (f, [-5,0])
x1 = fminbnd ('sin(x) - x.^2 .* cos(x)', -4, -3.5)
x2 = fminbnd ('sin(x) - x.^2 .* cos(x)', -1.5, -1)
quad('sin(x) - x.^2 .* cos(x)' , x1, x2)
%% Функция для задания 10
function f = F(y)
f = quadl(@f1, 0, y);
end
function f = f1(x)
f = exp(x).*(sin(x)-cos(x));
end
