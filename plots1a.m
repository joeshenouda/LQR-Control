figure
plot(out.t, out.xopt);
title('Response of State Variables');
legend('X1','X2','X3','X4');
%xlim([0 30]);
grid on;
xlabel('Time(s)');

figure
plot(out.t,out.uopt);
title('Optimal input signal (u)');
grid on;
%xlim([0 30]);
xlabel('Time(s)');
