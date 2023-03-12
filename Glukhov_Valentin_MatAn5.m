%% Задание1
figure; grid on; hold on;
x = 0:0.05:5;
fplot(x,myfun1(x))
%% Задание2
clc;
x = 0:0.05:5;
figure; grid on; hold on;
plot(x,myfun1(x))
fplot(@myfun1, [0 5])
help myfun1
lookfor myfun1
%% Задание3
clc;
a = input('Вектор в []: ');
ans = task3(a)
%% Задание4
clc;
figure; grid on; hold on;
fplot(@myfun2, [-5 5]);
x1 = fzero(@myfun2, -5)
x2 = fzero(@myfun2, -2)
x3 = fzero(@myfun2, 0)
x4 = fzero(@myfun2, 5)
%% Задание5
clear; clc;
p = [1 0 0 0 0 3 1 -10 -1 1024];
disp('Корни:');
r = roots(p)
disp('Значения:');
pl = polyval(p,r)
%% Задание6
clc;
figure; grid on; hold on;
y1 = inline('exp(x.^2) + sin(3*pi.*x)');
syms x;
fplot(y1(x))
[x, y] = fminbnd(y1, -5, 5) 
%% Задание7
clear; clc;
figure; grid on; hold on;
y1 = @(x) x.^2 + 1;
fplot(y1)
[x, y] = fminbnd(y1, -5, 5)
%% Функции
function f = task3(a)
f = 0;
for i = 1:2:length(a)
    f = f + a(i);
end
end

function f = myfun2(x)
f = sin(x) - x.^2 .* cos(x);
end
