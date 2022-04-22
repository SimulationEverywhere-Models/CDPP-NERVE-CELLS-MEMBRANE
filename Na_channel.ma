[top]
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
