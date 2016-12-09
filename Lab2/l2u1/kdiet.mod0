# Kajs dietproblemmodell
set BEHOV;
set MAT;

param pris{MAT};
param maxport{MAT};
param minkrav{BEHOV};
param maxkrav{BEHOV};
param inneh{BEHOV,MAT};

var port{j in MAT} >= 0, <= maxport[j];

minimize totalpris:  sum {j in MAT} pris[j] * port[j];
subject to minnytta{i in BEHOV}:
	sum {j in MAT} inneh[i,j] * port[j] >= minkrav[i];
subject to maxnytta{i in BEHOV}:
	sum {j in MAT} inneh[i,j] * port[j] <= maxkrav[i];

# alternativ:
#subject to minnytta{i in BEHOV}:
#	minkrav[i] <= sum {j in MAT} inneh[i,j] * port[j] <= maxkrav[i];

solve;

printf " *** Optimum: ***\n";
printf{j in MAT: port[j]>0} "      %.2f portioner av %s\n",port[j],j;

end;

