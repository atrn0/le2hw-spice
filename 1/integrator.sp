* integrator

.options post temp=27

* Input source
v1 in 0 pwl ( 0.0n 0.0
+            99.5n 0.0
+           100.5n 2.5
+           199.5n 2.5
+           200.5n 0.0 )
* other components
R1 in out 1.00k
C1 out 0 10.0p

.tran 0.1n 300n
.end