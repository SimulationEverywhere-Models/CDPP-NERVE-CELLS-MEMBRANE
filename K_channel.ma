[top]
components : K_generator@ion_generator
components : n_gate@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@n_gate
Link : out_Delta_V@K_generator in_Delta_V@n_gate
Link : out_Delta_V@n_gate out_Delta_V

[K_generator]
tau : 20
Delta_V : -1

[n_gate]
V_th : 10
V_sign : 1
delay : 400
