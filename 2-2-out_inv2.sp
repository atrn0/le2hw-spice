* 2-2 inv 2

.options post temp=27
.INCLUDE mos_model3
.include logic.cir

* Input source
v1 node1 0 pwl ( 0.0n 0.0
+            0.9n 0.0
+           1.1n 2.5
+           1.9n 2.5
+           2.1n 0.0 )

* vdd
v0 Vdd1 0 2.5

* other components
X1 node1 node2 Vdd1 inv

X2 node2 0 Vdd inv
X3 node2 0 Vdd inv

.tran 0.1n 3n
.end
