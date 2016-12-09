param n;
param m;
param s{1..m};
param d{1..n};
param f{1..m};
param c{1..m, 1..n};
param e := 1;

var x{1..m, 1..n}, >=0;
var y{1..m}, <=1;

minimize v: (sum {i in 1..m, j in 1..n} c[i,j] * x[i,j]) + (sum {i in 1..m} e * f[i] * y[i]);

subject to bv1 {i in 1..m}:
	sum {j in 1..n} x[i,j] <= s[i] * y[i];

subject to bv2 {j in 1..n}:
	sum {i in 1..m} x[i,j] = d[j];

/*subject to bv3 {i in 1..m}:
	sum {j in 1..n} x[i,j] >= 0;*/

solve;

printf " *** Optimum: ***\n";
printf " Kostnad: %f\n", v;
#printf {i in 1..m} " %f", y[i];
printf "\n";
printf " antal ettor %d\n", sum {i in 1..m: y[i] = 1} y[i];
printf " antal mellan 0 & 1: %d\n", sum {i in 1..m: y[i] > 0 and y[i] < 1} ceil(y[i]);
end;

