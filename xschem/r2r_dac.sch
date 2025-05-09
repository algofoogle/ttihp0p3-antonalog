v {xschem version=3.4.7RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {W=1um
L=6um
=> R=8660} 70 -300 0 0 0.4 0.4 {}
N 300 -260 300 -240 {lab=#net1}
N 180 -140 200 -140 {lab=#net2}
N 300 -140 330 -140 {lab=#net3}
N 300 -180 300 -140 {lab=#net3}
N 260 -140 300 -140 {lab=#net3}
N 300 -360 300 -320 {lab=IN[0]}
N 390 -140 420 -140 {lab=#net4}
N 420 -260 420 -240 {lab=#net5}
N 420 -140 450 -140 {lab=#net4}
N 420 -180 420 -140 {lab=#net4}
N 420 -360 420 -320 {lab=IN[1]}
N 510 -140 540 -140 {lab=#net6}
N 540 -260 540 -240 {lab=#net7}
N 540 -140 570 -140 {lab=#net6}
N 540 -180 540 -140 {lab=#net6}
N 540 -360 540 -320 {lab=IN[2]}
N 630 -140 660 -140 {lab=#net8}
N 660 -260 660 -240 {lab=#net9}
N 660 -140 690 -140 {lab=#net8}
N 660 -180 660 -140 {lab=#net8}
N 660 -360 660 -320 {lab=IN[3]}
N 750 -140 780 -140 {lab=#net10}
N 780 -260 780 -240 {lab=#net11}
N 780 -140 810 -140 {lab=#net10}
N 780 -180 780 -140 {lab=#net10}
N 780 -360 780 -320 {lab=IN[4]}
N 870 -140 900 -140 {lab=#net12}
N 900 -260 900 -240 {lab=#net13}
N 900 -140 930 -140 {lab=#net12}
N 900 -180 900 -140 {lab=#net12}
N 900 -360 900 -320 {lab=IN[5]}
N 990 -140 1020 -140 {lab=#net14}
N 1020 -260 1020 -240 {lab=#net15}
N 1020 -140 1050 -140 {lab=#net14}
N 1020 -180 1020 -140 {lab=#net14}
N 1020 -360 1020 -320 {lab=IN[6]}
N 1110 -140 1140 -140 {lab=OUT}
N 1140 -260 1140 -240 {lab=#net16}
N 1140 -140 1200 -140 {lab=OUT}
N 1140 -180 1140 -140 {lab=OUT}
N 1140 -360 1140 -320 {lab=IN[7]}
N 100 -140 120 -140 {lab=GND}
C {sg13g2_pr/rhigh.sym} 300 -290 0 0 {name=R0a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 300 -210 0 0 {name=R0b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 360 -140 1 0 {name=R1c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 230 -140 1 0 {name=R0c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 150 -140 1 0 {name=R0d
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 420 -290 0 0 {name=R1a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 420 -210 0 0 {name=R1b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 480 -140 1 0 {name=R2c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 540 -290 0 0 {name=R2a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 540 -210 0 0 {name=R2b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 600 -140 1 0 {name=R3c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 660 -290 0 0 {name=R3a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 660 -210 0 0 {name=R3b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 720 -140 1 0 {name=R4c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 780 -290 0 0 {name=R4a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 780 -210 0 0 {name=R4b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 840 -140 1 0 {name=R5c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 900 -290 0 0 {name=R5a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 900 -210 0 0 {name=R5b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 960 -140 1 0 {name=R6c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 1020 -290 0 0 {name=R6a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 1020 -210 0 0 {name=R6b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 1080 -140 1 0 {name=R7c
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 1140 -290 0 0 {name=R7a
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {sg13g2_pr/rhigh.sym} 1140 -210 0 0 {name=R7b
w=1.0e-6
l=6.0e-6
model=rhigh
spiceprefix=X
b=0
m=1
}
C {ipin.sym} 100 -360 0 0 {name=p2 lab=IN[7:0]}
C {iopin.sym} 100 -140 0 1 {name=p1 lab=GND}
C {lab_pin.sym} 300 -360 0 0 {name=p3 sig_type=std_logic lab=IN[0]}
C {lab_pin.sym} 420 -360 0 0 {name=p4 sig_type=std_logic lab=IN[1]}
C {lab_pin.sym} 540 -360 0 0 {name=p5 sig_type=std_logic lab=IN[2]}
C {lab_pin.sym} 660 -360 0 0 {name=p6 sig_type=std_logic lab=IN[3]}
C {lab_pin.sym} 780 -360 0 0 {name=p7 sig_type=std_logic lab=IN[4]}
C {lab_pin.sym} 900 -360 0 0 {name=p8 sig_type=std_logic lab=IN[5]}
C {lab_pin.sym} 1020 -360 0 0 {name=p9 sig_type=std_logic lab=IN[6]}
C {lab_pin.sym} 1140 -360 0 0 {name=p10 sig_type=std_logic lab=IN[7]}
C {opin.sym} 1200 -140 0 0 {name=p11 lab=OUT}
