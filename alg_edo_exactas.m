syms x y c

% Se define M y N (Ingresar EDO)
m = x^2+y^2;
n = -x*y;

% Exacta?
diff_my = diff(m,y)
diff_nx = diff(n,x)

if diff_my == diff_nx
    fprintf("La EDO es exacta")
    
    % Integracion de M
    int_mx = int(m,x)

    % Derivadas Parciales de f(x,y) con respecto a y
    f_xy = diff(int_mx,y) + c
    
    % Despejar A'(y)
    diff_ay = solve(f_xy == n,c)
    
    % Integrar A'(y)
    ay = int(diff_ay,y)

    sol = int_mx + ay
  
else
    fprintf("La EDO NO es exacta")

    % Buscar factor Integrante
    ec_1 = (diff_my-diff_nx)

    % Eleccion de M o N depende, si queda en funcion de 1 variable
    ec_2 = simplify(ec_1/m)
    ec_3 = simplify(ec_1/n)
    
    % Opcion elegida se aplica a Factor Integrante
    % Verificar si usar ec_2 o ec_3
    f_i = simplify(exp(-int(ec_3, y)))
    
    m2 = simplify(m*f_i)
    n2 = simplify(n*f_i)

    diff_m2y = diff(m2,y)
    diff_n2x = diff(n2,x)

    if diff_m2y == diff_n2x
        fprintf("La EDO es exacta")
    else
        fprintf("Revisar porque la EDO No dio exacta")
    end

    % Integracion de M2
    int_m2x = int(m2,x)

    % Derivadas Parciales de f(x,y) con respecto a y
    f_xy = diff(int_m2x,y) + c
    
    % Despejar A'(y)
    diff_ay = solve(f_xy == n2,c)
    
    % Integrar A'(y)
    ay = int(diff_ay,y)

    sol = int_m2x + ay

end