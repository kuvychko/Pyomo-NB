\* Source Pyomo model name=unknown *\

min 
x1:
+9 x2
+27 x3

s.t.

r_l_x4_:
+9 x2
+27 x3
>= 1

r_u_x4_:
+9 x2
+27 x3
<= 9

bounds
   -inf <= x2 <= +inf
   -inf <= x3 <= +inf
general
  x2
  x3
end
