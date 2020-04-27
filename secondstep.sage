#Since sage is currently unable to type change from Lazy to non-Lazy Rings, 
#we have to stoop down to manually doing so, 
#by copy pasting the output of the former computation of w in firststep.sage. 

S.<u1,u2,u3> = QQ[]
L.<z> = LaurentSeriesRing(S);
w = (output from firststep.sage)
y = 1/w
x = y*z
f = x.derivative()
o = f/y
log = o.integral()
print log
#l is the logarithm of the formal group law we split off of our Jacobian 

#Now we need to check if this logarithm aligns with the universal one

#mod out by u1
L1 = L.change_ring(S.quo(u1))
print "Modding out by u1:"
print L1(log) #l modded out by u1 

#mod out by u2
L2L=L.change_ring(S.quo(u2))
print "Modding out by u2:"
print L2(L1(log))

#mod out by u3
L3 = L.change_ring(S.quo(u3))
print "Modding out by u3:"
print L3(L2(L1(log)))

#All that remains is z + u1z^p/p + u2*z^{p^2}/p^2 + u_3z^{p^3}/p^3, thus our logarithm f is isomorphic to the universal formal group law! Huzzah!
