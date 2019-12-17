* 2-1

.options post temp=27
.include logic.cir

* vdd
v0 Vdd 0 2.5

* Input source
v1 in 0 pwl ( 0.0n 0.0
+            99.5n 0.0
+           100.5n 2.5
+           199.5n 2.5
+           200.5n 0.0 )

* other components
X1 in out Vdd inv
C1 out 0 30.0f

.tran 0.1n 300n
.end