#This is the description of how to calculate the logarithm of the formal group law we split off of a particular Jacobian. 

S.<u1,u2,u3> = ZZ[]
L.<z> = LazyLaurentSeriesRing(S);
w = L.series(lambda w,n: (z^5 + u1*z^4*w + u2*z^3*w^2 + u3*z^2*w^3 - (1+u1+u2+u3)*z*w^4)[n], valuation=0)
print w.approximate_series(5^4)

#Since sage is currently unable to type change from Lazy to non-Lazy Rings, 
#we have to stoop down to manually doing so, 
#by copy pasting the output of the former computation of w above.
