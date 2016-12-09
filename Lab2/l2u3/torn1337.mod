param n := 8;
param m := 8;

var brade{1..n, 1..m}, binary;

maximize torn: sum {i in 1..n} sum {j in 1..m} brade[i, j];
subject to maxkolumn {i in 1..n}:
	sum {j in 1..m} brade[i, j] <= 1;
	subject to maxrad {j in 1..m}:
		sum {i in 1..n} brade[i, j] <= 1;

		solve;

		printf " *** Optimum: ***\n";
		printf "Summa torn: %d\n", torn;

		printf{i in 1..n, j in 1..m: brade[i, j] > 0} "Torn placeras på %d:%d \n", i, j;

	end;
