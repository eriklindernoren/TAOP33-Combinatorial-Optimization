Problem:    kdiet
Rows:       25
Columns:    63
Non-zeros:  1126
Status:     OPTIMAL
Objective:  totalpris = 5.363036219 (MINimum)

   No.   Row name   St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 totalpris    B        5.36304                             
     2 minnytta[Cal]
                    NL          2000          2000                       < eps
     3 minnytta[CalFat]
                    B        306.548            -0               
     4 minnytta[Fat]
                    B        32.7316            -0               
     5 minnytta[SatFat]
                    B        12.9956            -0               
     6 minnytta[Chol]
                    B        123.605            -0               
     7 minnytta[Sodium]
                    B           3000            -0               
     8 minnytta[Carbo]
                    B        370.218           350               
     9 minnytta[Protein]
                    NL            55            55                   0.0134692 
    10 minnytta[VitA]
                    NL           100           100                   0.0135689 
    11 minnytta[VitC]
                    NL           100           100                  0.00505887 
    12 minnytta[Calcium]
                    NL           100           100                   0.0126186 
    13 minnytta[Iron]
                    NL           100           100                   0.0278307 
    14 maxnytta[Cal]
                    B           2000                       99999 
    15 maxnytta[CalFat]
                    B        306.548                       99999 
    16 maxnytta[Fat]
                    B        32.7316                         100 
    17 maxnytta[SatFat]
                    B        12.9956                          30 
    18 maxnytta[Chol]
                    B        123.605                         375 
    19 maxnytta[Sodium]
                    NU          3000                        3000  -0.000428492 
    20 maxnytta[Carbo]
                    B        370.218                         375 
    21 maxnytta[Protein]
                    B             55                       99999 
    22 maxnytta[VitA]
                    B            100                       99999 
    23 maxnytta[VitC]
                    B            100                       99999 
    24 maxnytta[Calcium]
                    B            100                       99999 
    25 maxnytta[Iron]
                    B            100                       99999 

   No. Column name  St   Activity     Lower bound   Upper bound    Marginal
------ ------------ -- ------------- ------------- ------------- -------------
     1 port[Hamburger]
                    NL             0             0           999     0.0201731 
     2 port[Cheeseburger]
                    B        2.05861             0           999 
     3 port['Quarter Pounder w/ Cheese']
                    NL             0             0           999      0.769431 
     4 port['McLean Deluxe']
                    NL             0             0           999        1.1486 
     5 port['McLean Deluxe w/ Cheese']
                    NL             0             0           999       1.18499 
     6 port['Big Mac']
                    NL             0             0           999      0.921018 
     7 port[Filet-O-Fish]
                    NL             0             0           999       1.06951 
     8 port['McGrilled Chicken']
                    NL             0             0           999       1.56747 
     9 port['McChicken Sandwich']
                    NL             0             0           999       1.63489 
    10 port['Fries, small']
                    NL             0             0           999      0.645182 
    11 port['Fries, large']
                    NL             0             0           999      0.881427 
    12 port['Fries, super']
                    NL             0             0           999       1.07661 
    13 port['Chicken McNuggets (6 pcs)']
                    NL             0             0           999       1.50216 
    14 port['Chicken McNuggets (9 pcs)']
                    NL             0             0           999       2.08607 
    15 port['Chicken McNuggets (20 pcs)']
                    NL             0             0           999       3.91489 
    16 port['Hot Mustard Sauce']
                    NL             0             0           999     0.0818859 
    17 port['Barbeque Sauce']
                    NL             0             0           999     0.0155147 
    18 port['Sweet ''N Sour Sauce']
                    B        4.12272             0           999 
    19 port[Honey]  B        15.7683             0           999 
    20 port['Chef Salad']
                    NL             0             0           999      0.936544 
    21 port['Chunky Chicken Salad']
                    B        0.03623             0           999 
    22 port['Garden Salad']
                    NL             0             0           999      0.294735 
    23 port['Side Salad']
                    NL             0             0           999     0.0548082 
    24 port[Croutons]
                    NL             0             0           999     0.0465197 
    25 port['Bacon Bits']
                    NL             0             0           999     0.0272375 
    26 port['Bleu Cheese Dressing']
                    NL             0             0           999      0.321369 
    27 port['Ranch Dressing']
                    NL             0             0           999      0.222816 
    28 port['1000 Island Dressing']
                    NL             0             0           999      0.214246 
    29 port['Lite Vinaigrette Dressing']
                    NL             0             0           999      0.102838 
    30 port['French Rdcd Cal Dressing']
                    NL             0             0           999      0.197106 
    31 port['Egg McMuffin']
                    NL             0             0           999       0.68317 
    32 port['Sausage McMuffin']
                    NL             0             0           999      0.693793 
    33 port['Sansage McMuffin with Egg']
                    NL             0             0           999      0.593592 
    34 port['English Muffin']
                    NL             0             0           999      0.455712 
    35 port['Sausage Biscuit']
                    NL             0             0           999      0.694746 
    36 port['Sausage Biscuit with Egg']
                    NL             0             0           999      0.988347 
    37 port['Bacon, Egg & Cheese Biscuit']
                    NL             0             0           999       1.00306 
    38 port['Hash Browns']
                    NL             0             0           999      0.807815 
    39 port['Breakfast Burrito']
                    NL             0             0           999      0.541786 
    40 port[Cheerios]
                    B        2.26957             0           999 
    41 port[Wheaties]
                    NL             0             0           999      0.202922 
    42 port['Apple Danish']
                    NL             0             0           999        0.6148 
    43 port['Cheese Danish']
                    NL             0             0           999      0.539158 
    44 port['Cinnamon Raisin Danish']
                    NL             0             0           999      0.510486 
    45 port['Raspberry Danish']
                    NL             0             0           999      0.576094 
    46 port['Lowfat Frozen Yogurt Cone']
                    NL             0             0           999      0.617079 
    47 port['Vanilla Shake']
                    NL             0             0           999      0.429391 
    48 port['Chocolate Shake']
                    NL             0             0           999      0.334594 
    49 port['Strawberry Shake']
                    NL             0             0           999      0.429391 
    50 port['1% Lowfat Milk']
                    B        1.77758             0           999 
    51 port['Orange Juice']
                    B       0.408178             0           999 
    52 port['Coca-Cola (small)']
                    NL             0             0           999      0.886427 
    53 port['Coca-Cola (medium)']
                    NL             0             0           999       0.99857 
    54 port['Coca-Cola (large)']
                    NL             0             0           999       1.18285 
    55 port['Diet Coke (small)']
                    NL             0             0           999       0.88857 
    56 port['Diet Coke (medium)']
                    NL             0             0           999       1.00071 
    57 port['Diet Coke (large)']
                    NL             0             0           999         1.185 
    58 port['Sprite (small)']
                    NL             0             0           999      0.894997 
    59 port['Sprite (medium)']
                    NL             0             0           999       1.01142 
    60 port['Sprite (large)']
                    NL             0             0           999       1.19999 
    61 port['H-C Orange Drink (small)']
                    NL             0             0           999      0.894997 
    62 port['H-C Orange Drink (medium)']
                    NL             0             0           999       1.01142 
    63 port['H-C Orange Drink (large)']
                    NL             0             0           999       1.20214 

Karush-Kuhn-Tucker optimality conditions:

KKT.PE: max.abs.err = 4.55e-13 on row 2
        max.rel.err = 1.14e-16 on row 2
        High quality

KKT.PB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

KKT.DE: max.abs.err = 1.42e-14 on column 21
        max.rel.err = 1.98e-15 on column 21
        High quality

KKT.DB: max.abs.err = 0.00e+00 on row 0
        max.rel.err = 0.00e+00 on row 0
        High quality

End of output
