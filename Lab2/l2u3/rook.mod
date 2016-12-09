var board{1..8, 1..8}, binary;

maximize rooks: sum {i in 1..8} sum {j in 1..8} board[i, j];

subject to const1{i in 1..8}:
	sum {j in 1..8} board[i, j] <= 1;

subject to const2{i in 1..8}:
	sum {j in 1..8} board[j, i] <= 1;

solve;

printf "Numb. of rooks: %d\n", rooks;
printf{i in 1..8, j in 1..8: board[i, j] > 0} "Rook at position: %d:%d\n", i, j;

end;
