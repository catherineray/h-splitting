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
print o.integral()
