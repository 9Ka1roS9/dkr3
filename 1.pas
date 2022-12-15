uses crt;
function f(x:real):real;
begin
f:=1*x*x*x-2*x*x+2*x+2;
end;
function per(x:real):real;
begin
per:=power(x,3)-(2*sqr(x))+2*x+2;
end;
procedure horoh;
begin
print('Введите верхний предел:');
var a:=ReadInteger;
print('Введите нижний предел:');
var b:=ReadInteger;
print('Введите количество разбиений:');
var n:=ReadInteger;
var h:=(b-a)/n;
var s:=(f(a)+f(b))/2;
var x:=a+h;
for var i:=1 to n-1 do
begin
s:=s+f(x);
x:=x+h;
s:=s*h;
end;
var p:=per(b)-per(a);
var d:=abs(p-s);
println('Точное значение:',p);
println('Приближенное значение:',s);
println('Погрешность метода',d);
end;
var t:integer;
begin
repeat
clrscr;
println('Выберите то,что вам необходимо:');
println('1-функция');
println('2-нахождение площади');
println('0-выйти из программы');
readln(t);
case t of
1:begin println('Функция:(1)x,3+(-1)x,2+(3)*x+(2)'); readkey; end;
2:begin horoh; readkey; end;
0:begin halt; readkey; end
end;
until t=4;
end.