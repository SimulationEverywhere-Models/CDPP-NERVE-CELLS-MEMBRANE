[top]
components : regulator@voltage_regulator
components : K_channel
components : Na_channel

in : in_Delta_V
out : out_Delta_V
out : out_V

Link : in_Delta_V in_Delta_V@regulator
Link : out_V@regulator out_V

Link : out_V@regulator in_V@K_channel
Link : out_Delta_V@K_channel in_Delta_V@regulator
Link : out_Delta_V@K_channel out_Delta_V

Link : out_V@regulator in_V@Na_channel
Link : out_Delta_V@Na_channel in_Delta_V@regulator
Link : out_Delta_V@Na_channel out_Delta_V

[regulator]
R : 1000

[K_channel]
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

[Na_channel]
components : Na_generator@ion_generator
components : h_gate@ion_gate
components : m_gate@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@h_gate
Link : in_V in_V@m_gate
Link : out_Delta_V@Na_generator in_Delta_V@h_gate
Link : out_Delta_V@h_gate in_Delta_V@m_gate
Link : out_Delta_V@m_gate out_Delta_V

[Na_generator]
tau : 10
Delta_V : 1

[h_gate]
V_th : 10
V_sign : -1
delay : 500

[m_gate]
V_th : 10
V_sign : 1
delay : 0

