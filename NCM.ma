[top]
components : node0
components : node1
components : node2
components : node3

in : in_Delta_V_left
in : in_Delta_V_right
out : out_Delta_V_left
out : out_Delta_V_right
out : out_V0
out : out_V1
out : out_V2
out : out_V3

Link : in_Delta_V_left in_Delta_V@node0
Link : out_Delta_V@node0 in_Delta_V@node1
Link : out_Delta_V@node1 in_Delta_V@node2
Link : out_Delta_V@node2 in_Delta_V@node3
Link : out_Delta_V@node3 out_Delta_V_right

Link : in_Delta_V_right in_Delta_V@node3
Link : out_Delta_V@node3 in_Delta_V@node2
Link : out_Delta_V@node2 in_Delta_V@node1
Link : out_Delta_V@node1 in_Delta_V@node0
Link : out_Delta_V@node0 out_Delta_V_left

Link : out_V@node0 out_V0
Link : out_V@node1 out_V1
Link : out_V@node2 out_V2
Link : out_V@node3 out_V3

[node0]
components : regulator0@voltage_regulator
components : K_channel0
components : Na_channel0

in : in_Delta_V
out : out_Delta_V
out : out_V

Link : in_Delta_V in_Delta_V@regulator0
Link : out_V@regulator0 out_V

Link : out_V@regulator0 in_V@K_channel0
Link : out_Delta_V@K_channel0 in_Delta_V@regulator0
Link : out_Delta_V@K_channel0 out_Delta_V

Link : out_V@regulator0 in_V@Na_channel0
Link : out_Delta_V@Na_channel0 in_Delta_V@regulator0
Link : out_Delta_V@Na_channel0 out_Delta_V

[regulator0]
R : 1000

[K_channel0]
components : K_generator0@ion_generator
components : n_gate0@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@n_gate0
Link : out_Delta_V@K_generator0 in_Delta_V@n_gate0
Link : out_Delta_V@n_gate0 out_Delta_V

[K_generator0]
tau : 20
Delta_V : -1

[n_gate0]
V_th : 20
V_sign : 1
delay : 400

[Na_channel0]
components : Na_generator0@ion_generator
components : h_gate0@ion_gate
components : m_gate0@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@h_gate0
Link : in_V in_V@m_gate0
Link : out_Delta_V@Na_generator0 in_Delta_V@h_gate0
Link : out_Delta_V@h_gate0 in_Delta_V@m_gate0
Link : out_Delta_V@m_gate0 out_Delta_V

[Na_generator0]
tau : 10
Delta_V : 1

[h_gate0]
V_th : 20
V_sign : -1
delay : 500

[m_gate0]
V_th : 20
V_sign : 1
delay : 0

[node1]
components : regulator1@voltage_regulator
components : K_channel1
components : Na_channel1

in : in_Delta_V
out : out_Delta_V
out : out_V

Link : in_Delta_V in_Delta_V@regulator1
Link : out_V@regulator1 out_V

Link : out_V@regulator1 in_V@K_channel1
Link : out_Delta_V@K_channel1 in_Delta_V@regulator1
Link : out_Delta_V@K_channel1 out_Delta_V

Link : out_V@regulator1 in_V@Na_channel1
Link : out_Delta_V@Na_channel1 in_Delta_V@regulator1
Link : out_Delta_V@Na_channel1 out_Delta_V

[regulator1]
R : 1000

[K_channel1]
components : K_generator1@ion_generator
components : n_gate1@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@n_gate1
Link : out_Delta_V@K_generator1 in_Delta_V@n_gate1
Link : out_Delta_V@n_gate1 out_Delta_V

[K_generator1]
tau : 20
Delta_V : -1

[n_gate1]
V_th : 20
V_sign : 1
delay : 400

[Na_channel1]
components : Na_generator1@ion_generator
components : h_gate1@ion_gate
components : m_gate1@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@h_gate1
Link : in_V in_V@m_gate1
Link : out_Delta_V@Na_generator1 in_Delta_V@h_gate1
Link : out_Delta_V@h_gate1 in_Delta_V@m_gate1
Link : out_Delta_V@m_gate1 out_Delta_V

[Na_generator1]
tau : 10
Delta_V : 1

[h_gate1]
V_th : 20
V_sign : -1
delay : 500

[m_gate1]
V_th : 20
V_sign : 1
delay : 0

[node2]
components : regulator2@voltage_regulator
components : K_channel2
components : Na_channel2

in : in_Delta_V
out : out_Delta_V
out : out_V

Link : in_Delta_V in_Delta_V@regulator2
Link : out_V@regulator2 out_V

Link : out_V@regulator2 in_V@K_channel2
Link : out_Delta_V@K_channel2 in_Delta_V@regulator2
Link : out_Delta_V@K_channel2 out_Delta_V

Link : out_V@regulator2 in_V@Na_channel2
Link : out_Delta_V@Na_channel2 in_Delta_V@regulator2
Link : out_Delta_V@Na_channel2 out_Delta_V

[regulator2]
R : 1000

[K_channel2]
components : K_generator2@ion_generator
components : n_gate2@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@n_gate2
Link : out_Delta_V@K_generator2 in_Delta_V@n_gate2
Link : out_Delta_V@n_gate2 out_Delta_V

[K_generator2]
tau : 20
Delta_V : -1

[n_gate2]
V_th : 20
V_sign : 1
delay : 400

[Na_channel2]
components : Na_generator2@ion_generator
components : h_gate2@ion_gate
components : m_gate2@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@h_gate2
Link : in_V in_V@m_gate2
Link : out_Delta_V@Na_generator2 in_Delta_V@h_gate2
Link : out_Delta_V@h_gate2 in_Delta_V@m_gate2
Link : out_Delta_V@m_gate2 out_Delta_V

[Na_generator2]
tau : 10
Delta_V : 1

[h_gate2]
V_th : 20
V_sign : -1
delay : 500

[m_gate2]
V_th : 20
V_sign : 1
delay : 0

[node3]
components : regulator3@voltage_regulator
components : K_channel3
components : Na_channel3

in : in_Delta_V
out : out_Delta_V
out : out_V

Link : in_Delta_V in_Delta_V@regulator3
Link : out_V@regulator3 out_V

Link : out_V@regulator3 in_V@K_channel3
Link : out_Delta_V@K_channel3 in_Delta_V@regulator3
Link : out_Delta_V@K_channel3 out_Delta_V

Link : out_V@regulator3 in_V@Na_channel3
Link : out_Delta_V@Na_channel3 in_Delta_V@regulator3
Link : out_Delta_V@Na_channel3 out_Delta_V

[regulator3]
R : 1000

[K_channel3]
components : K_generator3@ion_generator
components : n_gate3@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@n_gate3
Link : out_Delta_V@K_generator3 in_Delta_V@n_gate3
Link : out_Delta_V@n_gate3 out_Delta_V

[K_generator3]
tau : 20
Delta_V : -1

[n_gate3]
V_th : 20
V_sign : 1
delay : 400

[Na_channel3]
components : Na_generator3@ion_generator
components : h_gate3@ion_gate
components : m_gate3@ion_gate

in : in_V
out : out_Delta_V

Link : in_V in_V@h_gate3
Link : in_V in_V@m_gate3
Link : out_Delta_V@Na_generator3 in_Delta_V@h_gate3
Link : out_Delta_V@h_gate3 in_Delta_V@m_gate3
Link : out_Delta_V@m_gate3 out_Delta_V

[Na_generator3]
tau : 10
Delta_V : 1

[h_gate3]
V_th : 20
V_sign : -1
delay : 500

[m_gate3]
V_th : 20
V_sign : 1
delay : 0

