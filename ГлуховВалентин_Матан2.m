%% Задание1
[x1,fval1] = fsolve(@Task11,[1,1],optimset('Display','iter'))
[x2,fval2] = fsolve(@Task12,[1,1,0],optimset('Display','iter'))
%% Задание2
syms x;
limit((10+x)^(1/x),x,0,'left')
limit((10+x)^(1/x),x,0,'right')
%% Задание3
syms x delta;
diff(atan(x),x)
limit((atan(x+delta)-atan(x))/delta,delta,0)
%% Задание4
syms x;
f = (9*x^2-1)/(x+1/3);
limit(f,x,-1/3)
%% Задание5
diff((3*cos(5*x^2))^3,x,1)
%% Задание 6
syms x y z;
disp("Первая функция")
f = sin(x+2*y)+2*sqrt(x*y*z);
disp("Производная по x")
diff(f,x,2)
disp("Производная по y")
diff(f,y,2)
disp("Производная по z")
diff(f,z,2)
disp("Производная по x y")
ff = diff(f,x,1);
diff(ff,y,1)
disp("Производная по y x")
ff = diff(f,y,1);
diff(ff,x,1)
disp("Производная по x z")
ff = diff(f,x,1);
diff(ff,z,1)
disp("Производная по z x")
ff = diff(f,z,1);
diff(ff,x,1)
disp("Производная по y z")
ff = diff(f,y,1);
diff(ff,z,1)
disp("Производная по z y")
ff = diff(f,y,1);
diff(ff,z,1)

disp("Вторая функция")
f = log(3-x^2)+x*y^2*z;
disp("Производная по x")
diff(f,x,2)
disp("Производная по y")
diff(f,y,2)
disp("Производная по z")
diff(f,z,2)
disp("Производная по x y")
ff = diff(f,x,1);
diff(ff,y,1)
disp("Производная по y x")
ff = diff(f,y,1);
diff(ff,x,1)
disp("Производная по x z")
ff = diff(f,x,1);
diff(ff,z,1)
disp("Производная по z x")
ff = diff(f,z,1);
diff(ff,x,1)
disp("Производная по y z")
ff = diff(f,y,1);
diff(ff,z,1)
disp("Производная по z y")
ff = diff(f,y,1);
diff(ff,z,1)

disp("Третья функция")
f = x^2-atan(y+z^3);
disp("Производная по x")
diff(f,x,2)
disp("Производная по y")
diff(f,y,2)
disp("Производная по z")
diff(f,z,2)
disp("Производная по x y")
ff = diff(f,x,1);
diff(ff,y,1)
disp("Производная по y x")
ff = diff(f,y,1);
diff(ff,x,1)
disp("Производная по x z")
ff = diff(f,x,1);
diff(ff,z,1)
disp("Производная по z x")
ff = diff(f,z,1);
diff(ff,x,1)
disp("Производная по y z")
ff = diff(f,y,1);
diff(ff,z,1)
disp("Производная по z y")
ff = diff(f,y,1);
diff(ff,z,1)

disp("Четвертая функция")
f = x^3*y^2*z+3*x-5*y+z+2;
disp("Производная по x")
diff(f,x,2)
disp("Производная по y")
diff(f,y,2)
disp("Производная по z")
diff(f,z,2)
disp("Производная по x y")
ff = diff(f,x,1);
diff(ff,y,1)
disp("Производная по y x")
ff = diff(f,y,1);
diff(ff,x,1)
disp("Производная по x z")
ff = diff(f,x,1);
diff(ff,z,1)
disp("Производная по z x")
ff = diff(f,z,1);
diff(ff,x,1)
disp("Производная по y z")
ff = diff(f,y,1);
diff(ff,z,1)
disp("Производная по z y")
ff = diff(f,y,1);
diff(ff,z,1)
%% Задание7
syms x
limit(sin(x)/x,x,0)
limit((1-exp(-x))/x,x,Inf)
limit((1-x)/log(x),x,1)
%% Задание8
syms x;
f = (x^2)*cos(2*x);
diff(f,x,6)
%% Задание9
syms x;
limit(1-exp(-x)/x,x,Inf)
%% Задание10
syms x a n;
y=exp(-a*x^5)+log(a^n+x^a)-(a*n)/x^3;
disp(diff(y,x,2))
%% Функции
function F = Task11(x)
    F(1)=x(1)^2-2*x(2)^2+1;
    F(2)=-3*x(1)^2+x(2)^2+2;
    F(3)=x(1)^3+x(2)^3-2;
end
function F2 = Task12(x)
    F2(1)=x(1)^2-2*x(2)^2+x(3)+1;
    F2(2)=-3*x(1)^2+x(2)^2+x(3)+2;
end