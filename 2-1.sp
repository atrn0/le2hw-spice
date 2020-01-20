* 2-1

.options post temp=27
.INCLUDE mos_model3
.include logic.cir

* Input source
v100 node1 0 pwl ( 0.0n 0.0
+            4.9n 0.0
+           5.1n 2.5
+           9.9n 2.5
+           10.1n 0.0 )

* vdd
v200 Vdd1 0 2.5

* other components
X1 node1 node2 Vdd1 inv
C100 node2 0 30f

.tran 0.1n 15n
.end
