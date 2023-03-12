%% Задание1
clear; clc;
syms x;
pretty(taylor(str2sym('1/(1+x)')))
%% Задание2
clear; clc;
syms x y;
f = str2sym('1/(x+y)');
pretty(taylor(f, x, 'Order', 7))
pretty(taylor(f, y, 'Order', 7))
%% Задание3
clear; clc;
syms x;
f = str2sym('x * sin(x)');
pretty(taylor(f, x, 2, 'Order', 10))
%% Задание4
clear; clc;
syms k x;
f1 = str2sym('(-1)^k/k^2');
f2 = str2sym('(-1)^k*(x^(2*k+1)/factorial(2*k+1))');
ans1 = symsum(f1, k, 1, Inf)
ans2 = symsum(f2, k, 0, Inf)
%% Задание5
clear; clc;
syms n;
f = str2sym('(1/2)*(1-(1/3)^n)');
symsum(f, n, 1, Inf) 
% расходится
%% Задание6
clear; clc;
syms n;

f6(str2sym('0.3^n'), 10)
symsum(str2sym('0.3^n'), n, 1, Inf) % сходится

f6(str2sym('1.5^n'), 10)
symsum(str2sym('1.5^n'), n, 1, Inf) % расходится

f6(str2sym('1/n'), 10)
symsum(str2sym('1/n'), n, 1, Inf) % расходится

f6(str2sym('1/n^(0.5)'), 10)
symsum(str2sym('1/sqrt(n)'), n, 1, Inf) % расходится

f6(str2sym('1/n^2'), 10)
symsum(str2sym('1/n^2'), n, 1, Inf) % сходится

f6(str2sym('1/(n^2 + 2 * n)'), 10)
symsum(str2sym('1/(n^2 + 2 * n)'), n, 1, Inf) % сходится
%% Функция для задания 6
function f = f6(rown, k)
xn = 1:k;
yn = subs(rown, 'n', xn);
figure; grid on; hold on;
plot(xn, yn);
sums = zeros(k, 1);
for i = 1:k
    sum = subs(rown, 'n', 1);
    for j = 2:1:i
        sum = sum + subs(rown, 'n', i);
    end
    sums(i) = sum;
end
plot(xn, sums);
end
