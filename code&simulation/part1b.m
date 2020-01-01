% n = number of state variables; m = number of inputs
% l  = number of outputs; 
n = 4; m = 1;
A = [-0.01357 -32.2 -46.3 0;
    0.00012 0 1.214 0;
    -0.0001212 0 -1.214 1;
    0.00057 0 -9.1 -0.6696];
B = [-0.433;0.1394;-0.1394;-0.1577];
C = eye(n);
D = zeros(n,1);

%Our goal is to regulate x1 of our state variables to 10
r = 10; Cz = [1 0 0 0];

M = [A B; Cz 0];

sol = inv(M)*[zeros(4,1);r];

xss = sol(1:4);
uss = sol(5);

R1 = Cz'*Cz;
R2 = 1;

CM = ctrb(A,B); rank(CM); %controllability test
OB = obsv(A,C); rank(OB); %observability test

x0 = [1;1;1;1];

[Fopt, P] = lqr(A,B,R1,R2);
ev_cl = eig(A-B*Fopt);
Jopt = 0.5*x0'*P*x0;

out1b = sim('part1bSimulink');
run('plots1b');