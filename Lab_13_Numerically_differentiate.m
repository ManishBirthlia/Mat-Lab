
% Numerically differentiate
% manish kumar
% 20bch044

syms x;syms y;
fprintf("Diff of \n");
diff(x^3/(3*x*y))
fprintf('Diff of log(x)\n');
diff(log(x)/(x+sin(x)))
fprintf('Diff of sin(x):\n')
diff(sin(x)/cos(x))
