syms x y c

m = 2*x*y^2-3/y^2
n = 7-3*x*y^2

% Integracion
int_f = int(m,x)

% Derivadas Parciales
ec = diff(int_f,y) + c

ec_1 = solve(ec == n,c)

int(ec_1,y)

sol = int_f + int(ec_1, y)

%Buscar factor integrante
m = x^2+y
n = -x

dmy = diff(m,y)
dnx = diff(n,x)

if dmy == dnx
    fprint("La EDO es exacta")
else
    fprintf("La EDO NO es exacta")
end

a = dmy - dnx

b = a/n
c = a/m