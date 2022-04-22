[top]
components : regulator@voltage_regulator

in : in_Delta_V
out : out_V

Link : in_Delta_V in_Delta_V@regulator
Link : out_V@regulator out_V

[regulator]
R : 1000