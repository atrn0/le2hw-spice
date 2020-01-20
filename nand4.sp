* 

.options post temp=27
.include logic.cir
.include mos_model3

* vdd
v0 Vdd 0 2.5

* Input source
v1 v1 0 pwl ( 0.0n 0.0
+            0.9n 0.0
+           1.0n 2.5
+           1.9n 2.5
+           2.0n 0.0 )

v2 v2 0 pwl ( 0.0n 0.0
+            2.9n 0.0
+           3.0n 2.5
+           3.9n 2.5
+           4.0n 0.0 )

v3 v3 0 pwl ( 0.0n 0.0
+            4.9n 0.0
+           5.0n 2.5
+           5.9n 2.5
+           6.0n 0.0 )

v4 v4 0 pwl ( 0.0n 0.0
+            6.9n 0.0
+           7.0n 2.5
+           7.9n 2.5
+           8.0n 0.0 )

* other components
X1 v1 in1 Vdd inv
X2 v2 in2 Vdd inv
X3 v3 in3 Vdd inv
X4 v4 in4 Vdd inv

X5 in1 in2 in3 in4 nandout Vdd nand4
X6 nandout out Vdd inv


C1 out 0 50.0f

.tran 0.1n 8.5n
.end
