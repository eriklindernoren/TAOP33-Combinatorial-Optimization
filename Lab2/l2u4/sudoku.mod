# Sudoku cheat script

set N := 1..9;

# x[i,j,k] = 1 if pos (i,j) contains digit k.
var x{1..9,1..9,1..9} binary;

param given{1..9,1..9};

subject to columns{j in N, k in N}:
	sum {i in N} x[i,j,k] = 1;

subject to rows {i in N, k in N}:
	sum {j in N} x[i,j,k] = 1;

subject to squares {k in N, p in 1..3, q in 1..3}:
	sum {j in (3 * p-2)..(3 * p)} sum {i in (3 * q-2)..(3 * q)} x[i,j,k] = 1;

subject to all_filled {i in N, j in N}:
	sum {k in N} x[i,j,k] = 1;

# Assigns the given digits
subject to fix{i in 1..9, j in 1..9: given[i,j]>0}: x[i,j,given[i,j]]=1;

solve;

# Prints out the result
printf("\nThe solution is the following:\n");
for{i in 1..9} {
  for{j in 1..9} {
    printf "%2d",sum{k in 1..9} k*x[i,j,k];
  }
  printf "\n";
}
printf "\n";

end;
