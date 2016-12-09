var board{1..8, 1..8}, binary;

maximize queens: sum {i in 1..8} sum {j in 1..8} board[i, j];

subject to const1{k in 0..6}:
	sum {i in 1..8-k} board[i+k, i] <= 1;

subject to const2{k in 1..6}:
	sum {i in 1..8-k} board[i, i+k] <= 1;

subject to const3{k in 1..6}:
	sum{i in 1..8-k} board[i, 9-k-i] <= 1;

subject to const4{k in 0..6}:
	sum{i in 1..8-k} board[i+k, 9-i] <= 1;

subject to const5{i in 1..8}:
	sum {j in 1..8} board[i, j] <= 1;

subject to const6{i in 1..8}:
	sum {j in 1..8} board[j, i] <= 1;

solve;

printf "Numb. of queens: %d\n", queens;
printf {i in 1..8, j in 1..8: board[i, j] > 0} "Queen at position: %d:%d\n", i, j;

end;

