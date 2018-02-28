R = QQ[a11, a12, a13, a21, a22, a23, a31, a32, a33, b1, b2, b3];
S = QQ[g01, g02, g04, g10, g13, g15, g20, g23, g26, g31, g32, g37, g40, g45, g46, g51, g54, g57, g62, g64, g67, g73, g75, g76];
T = QQ[x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,
x18,x19,x20,x21,x22,x23]

-- Calculated by Zhansheng with Sage
I = ideal (
g46*g64 - g57*g75, 
g26*g62 - g37*g73, 
g13*g31 - g57*g75, 
g45*g54 - g67*g76, 
g15*g51 - g37*g73, 
g23*g32 - g67*g76, 
g31*g64 - g20*g75, 
g51*g62 - g40*g73, 
g32*g54 - g10*g76, 
g02*g64 - g13*g75, 
g04*g62 - g15*g73, 
g02*g31 - g46*g75, 
g01*g54 - g23*g76, 
g01*g32 - g45*g76, 
g04*g51 - g26*g73, 
g20*g46 - g31*g57, 
g26*g40 - g37*g51, 
g13*g20 - g57*g64, 
g10*g45 - g32*g67, 
g10*g23 - g54*g67, 
g15*g40 - g37*g62, 
g13*g46 - g02*g57, 
g15*g26 - g04*g37, 
g23*g45 - g01*g67, 
g04*g40 - g37*g73, 
g02*g20 - g57*g75, 
g01*g10 - g67*g76);

f = map(S,T,{g01, g02, g04, g10, g13, g15, g20, g23, g26, g31, g32, g37, g40, g45, g46, g51, g54, g57, g62, g64, g67, g73, g75, g76});

--Transposed the notation into Polymake's notation
J = preimage (f,I)

--Calculated by Orlando with Polymake
J2 = ideal (- x0*x3 + x20*x23,
      - x0*x3 + x13*x16,
      - x0*x3 + x7*x10,
      - x0*x10 + x13*x23,
      - x0*x16 + x7*x23,
      - x0*x20 + x7*x13,
      - x1*x6 + x17*x22,
      - x1*x6 + x14*x19,
      - x1*x9 + x14*x22,
      - x1*x6 + x4*x9,
      - x1*x19 + x4*x22,
      - x1*x17 + x4*x14,
      - x2*x12 + x11*x21,
      - x2*x12 + x8*x18,
      - x2*x15 + x8*x21,
      - x2*x12 + x5*x15,
      - x2*x18 + x5*x21,
      - x2*x11 + x5*x8,
      - x3*x7 + x16*x20,
      - x3*x13 + x10*x20,
      - x3*x23 + x10*x16,
      - x4*x6 + x17*x19,
      - x5*x12 + x11*x18,
      - x6*x14 + x9*x17,
      - x6*x22 + x9*x19,
      - x8*x12 + x11*x15,
      - x12*x21 + x15*x18)

--They coincide!!!
J == J2