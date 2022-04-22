[top]
components : gate@ion_gate

in : in_Delta_V
in : in_V
out : out_Delta_V
out : out_g

Link : in_Delta_V in_Delta_V@gate
Link : in_V in_V@gate
Link : out_Delta_V@gate out_Delta_V
Link : out_g@gate out_g

[gate]
V_th : 10
V_sign : 1
delay : 100
