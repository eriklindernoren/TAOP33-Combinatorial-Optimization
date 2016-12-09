param n;
param m;

var board{1..n}, binary;

param a{1..m, 1..n};

minimize asbest: sum {i in 1..n} board[i];

subject to const1{i in 1..m}:
	sum {j in 1..n} a[i, j] * board[j] >= 1;

solve;

printf "Sum asbest: %d\n", sum {i in 1..n} board[i];
printf "Lift:";
printf{i in 1..n: board[i] > 0} " %d", i;
printf "\n";

end;
