% Ayudantia 1

% define x
syms x

% define funcion
f = log(x)/x^2

% 1era derivada
df = diff(f)

% 2da derivada
dff = diff(df)

% Se crea ecuacion
ec = (x^2)*dff+5*x*df+4*f

% Simplificar o resolver
simplify(ec)

% Define nueva funcion
g = 1/sqrt(1-x^2)

% Integral
G = int(g,x)

% Definicion de funcion
f1 = x*exp(-x)

% Integrando
h = int(f1)

% Definicion funcion
f2 = (x+1)*exp(-x)

% Calculo de limite
limit(f2,Inf)

