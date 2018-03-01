R = QQ[a11, a12, a13, a21, a22, a23, a31, a32, a33, b1, b2, b3];
S = QQ[g01, g02, g04, g10, g13, g15, g20, g23, g26, g31, g32, g37, g40, g45, g46, g51, g54, g57, g62, g64, g67, g73, g75, g76];
T = QQ[x0,x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,
x18,x19,x20,x21,x22,x23]
A = QQ[a11, a12, a13, a21, a22, a23, a31, a32, a33, b1, b2, b3, g01, g02, g04, g10, g13, g15, g20, g23, g26, g31, g32, g37, g40, g45, g46, g51, g54, g57, g62, g64, g67, g73, g75, g76];

S=S;

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

T=T;

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
      - x12*x21 + x15*x18);

--This is the ideal computed with the other method.
J3 = ideal(- x0*x2 + x13*x18
- x0*x4 + x9*x13
- x0*x19 + x13*x20
- x0*x20 + x9*x18
- x0*x19 + x4*x18
- x0*x19 + x2*x9
- x0*x19^2 + x2*x4*x20
- x1*x5 + x12*x15
- x1*x7 + x12*x16
- x1*x10 + x12*x17
- x1*x17 + x15*x16
- x1*x10 + x7*x15
- x1*x10 + x5*x16
- x1*x10^2 + x5*x7*x17
- x2*x4 + x13*x19
- x2*x20 + x18*x19
- x3*x6 + x14*x21
- x3*x8 + x14*x22
- x3*x11 + x14*x23
- x3*x23 + x21*x22
- x3*x11 + x8*x21
- x3*x11 + x6*x22
- x3*x11^2 + x6*x8*x23
- x4*x20 + x9*x19
- x5*x7 + x10*x12
- x5*x17 + x10*x15
- x6*x8 + x11*x14
- x6*x23 + x11*x21
- x7*x17 + x10*x16
- x8*x23 + x11*x22
);

A=A;

-- This is the ideal of the graph of the map
J4 = ideal(
g01 - b3,
g02 - b2,
g04 - b1,
g10*b3*a33 - 1,
g13 - b2*a32,
g15 - b1*a31,
g20*b2*a22 - 1,
g23 - b3*a23,
g26 - b1*a21,
g31*b2*a22*a32 - 1,
g32*b3*a23*a33 - 1,
g37 - b1*a21*a31,
g40*b1*a11 - 1,
g45 - b3*a13,
g46 - b2*a12,
g51*b1*a11*a31 - 1,
g54*b3*a13*a33 - 1,
g57 - b2*a12*a32,
g62*b1*a11*a21 - 1,
g64*b2*a12*a22 -1,
g67 - b3*a13*a23,
g73*b1*a11*a21*a31 - 1,
g75*b2*a12*a22*a32 - 1,
g76*b3*a13*a23*a33 - 1);


--They coincide!!!
J == J2
J2== J3

Jelim = eliminate(J4,{a11, a12, a13, a21, a22, a23, a31, a32, a33, b1, b2, b3})

S = S;

Jelimtypecast = ideal (g46*g64 - g57*g75, g31*g64 - g20*g75, g02*g64 - g13*g75, g51*g62 - g40*g73, g26*g62 - g37*g73, g04*g62 - g15*g73, g45*g54 - g67*g76, g32*g54 - g10*g76, g01*g54 - g23*g76, g15*g51 - g37*g73, g04*g51 - g26*g73, g20*g46 - g31*g57, g13*g46 - g02*g57, g23*g45 - g01*g67, g10*g45 - g32*g67, g26*g40 - g37*g51, g15*g40 - g37*g62, g04*g40 - g37*g73, g23*g32 - g67*g76, g01*g32 - g45*g76, g13*g31 - g57*g75, g02*g31 - g46*g75, g15*g26 - g04*g37, g10*g23 - g54*g67, g13*g20 - g57*g64, g02*g20 - g57*g75, g01*g10 - g67*g76)

Jelimtypecast == I

dim I, degree I