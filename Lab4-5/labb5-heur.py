#!/usr/bin/env python
# -*- coding: UTF-8 -*-
"""
TAOP33 - Laboration 5
Erik Linder-Noren (erino397)
"""

import numpy as np
import time
import sys

e=1

prob=" ".join(sys.argv[1:]).split('.')[0]
fil=prob+'.npz'
npzfile = np.load(fil)
m=npzfile['m']
n=npzfile['n']
s=npzfile['s']
d=npzfile['d']
f=npzfile['f']
c=npzfile['c']
#print 'm:',m,' n:',n
#print 's:',s
#print 'd:',d
#print 'f:',f
#print 'c:',c

t1=time.time()
x=np.zeros((m, n), dtype=np.int)
y=np.zeros((m), dtype=np.int)

ss=np.copy(s)
dd=np.copy(d)
cc=np.copy(c)
ff=np.copy(f)

"""
Demand d
Transported units x
Capacity s
Build cost f
Transport cost c
"""

i = 0
#print cc

print ss, dd
#raise Exception()

#ff *= e
#cc = cc + np.array([ff]).T

while sum(dd) > 0:
	# find facility, find customer, send, at min cost
	#row, col = np.where(cc == cc.min())
	print cc

	mincost = np.inf
	bestfac = 0
	if len(ff) == 0:
		raise Exception("uisadj")

	for fac in range(len(ff)):
		if ff[fac] < 0: continue
		cost = ff[fac] + sum(cc[fac, cc[fac] != -1])
		if cost < mincost:
			bestfac = fac
			mincost = cost

	fac = bestfac
	cust = np.where(cc[fac] == min(cc[fac][cc[fac] >= 0]))[0][0]

	maxsend = min(ss[fac], dd[cust])

	if maxsend > 0:
		# set x and y
		x[fac, cust] = maxsend
		y[fac] = 1
		# deduct from ss and dd,
		ss[fac] -= maxsend
		dd[cust] -= maxsend

		ff[fac] = 0
		print "Send %s from %d (%d) to %d (%d)" % (maxsend, fac, ss[fac], cust, dd[cust])

	if ss[fac] == 0:
		ff[fac] = -1
		print "Removing fac", fac
	if dd[cust] == 0:
		cc[:,cust] = -1
		print "Removing cust", cust

	i += 1

print "Iter:", i
elapsed = time.time() - t1
cost = sum(sum(np.multiply(c, x))) + e * np.dot(f, y)

print 'Problem: %s, Totalkostnad: %.1f' % (prob, cost)
print 'Antal fabriker: %d, antal kunder: %d' % (m, n)
print 'Tid: %.4f' % elapsed
print 'Total kapacitet: %d, total efterfrågan: %d' % (sum(s), sum(d))
print 'y:', y
print 'Antal byggda fabriker: %d (av %d)' % (sum(y), m)
