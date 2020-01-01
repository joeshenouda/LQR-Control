% Dimensions of state variables
n = 4;

% Dimensions of output
m = 1;

% Dimensions of controler
l = 1;

A = [-0.01357 -32.2 -46.3 0;
    0.00012 0 1.214 0;
    -0.0001212 0 -1.214 1;
    0.00057 0 -9.1 -0.6696];

B = [-0.433;0.1394;-0.1394;-0.1577];
C = eye(n);
D = zeros(n,1);

R1 = C'*C;
R2 = 1;

CM = ctrb(A,B); rank(CM); %controllability test
OB = obsv(A,C); rank(OB); %observability test

x0 = [1;1;1;1];

[Fopt, P] = lqr(A,B,R1,R2);

Jopt = 0.5*x0'*P*x0;

out = sim('part1aSimulink');

run('plots1a');