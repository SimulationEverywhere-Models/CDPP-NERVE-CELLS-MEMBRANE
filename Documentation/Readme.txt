###################
Nerve Cell Membrane
###################



Documents
---------

  Report (all three files contain the same report):
    - Nerve_Cell_Membrane.doc
    - Nerve_Cell_Membrane.pdf
    - Nerve_Cell_Membrane.odt

  Form:
    - form_Nerve_Cell_Membrane.doc



Ion Generator Test
------------------

  Description:
    - tested the "ion_generator" atomic model
    - model was run for 1:000 with no output
    - output voltages changes were observed at randomized
      intervals

  Files:
    - ion_generator_test.bat
    - ion_generator.ma



Ion Gate Test
-------------

  Description:
    - tested the "ion_gate" atomic model
    - transmembrane voltages and voltage changes were sent 
      to the input
    - voltage changes were observed to pass through the
      gate when the gate was open

  Files:
    - ion_gate_test.bat
    - ion_gate.ma
    - ion_gate_test.ev



Potassium Channel Test
----------------------

  Description:
    - tested the "K_channel" coupled model
    - voltages were input to control the n-gate
    - voltage changes from the ion generator were observed
      to pass through the channel at randomized intervals
      while the gate was open

  Files:
    - K_channel_test.bat
    - K_channel.ma
    - K_channel_test.ev



Sodium Channel Test
-------------------

  Description:
    - tested the "Na_channel" coupled model
    - voltages were input to control the h- and m-gates
    - voltage changes from the ion generator were observed
      to pass through the channel at randomized intervals
      while both gates were open

  Files:
    - Na_channel_test.bat
    - Na_channel.ma
    - Na_channel_test.ev



Voltage Regulator Test
----------------------

  Description:
    - tested the "voltage_regulator" atomic model
    - voltage changes were input
    - after each voltage input, the output voltage was 
      observed to decrease in magnitude in a series of 
      events
    - the overall shape of the resulting curves resembled
      exponential decays

  Files:
    - voltage_regulator_test.bat
    - voltage_regulator.ma
    - voltage_regulator_test.ev



Membrane Node Test
------------------

  Description:
    - tested the "NCM_node" coupled model
    - voltage changes were input to trigger responses
    - after the first input, which was below the 
      threshold, the output voltage was observed to 
      decay exponentially
    - after the second input, which brought the voltage
      up above the threshold, an action potential was
      observed on the output
    - the action potential had sharp peaks, a result of
      the fact that only one pair of channels was
      present

  Files:
    - NCM_node_test.bat
    - NCM_node.ma
    - NCM_node_test.ev



Nerve Cell Membrane Test A
--------------------------

  Description:
    - tested the "NCM" coupled model
    - a single voltage change was input to trigger an 
      action potential from the left side
    - the action potential was observed to propagate 
      through each node of the model in succession
    - although the leading ends of the signals showed the
      propogation clearly, the trailing ends showed
      assymetries; these were possibly a result of 
      boundary conditions

  Files:
    - NCM_test-A.bat
    - NCM.ma
    - NCM_test-A.ev



Nerve Cell Membrane Test B
--------------------------

  Description:
    - tested the "NCM" coupled model
    - a single voltage change was input to trigger an 
      action potential from the right side
    - the action potential was observed to propagate 
      through each node in the reverse order, as 
      expected

  Files:
    - NCM_test-B.bat
    - NCM.ma
    - NCM_test-B.ev



Nerve Cell Membrane Test C
--------------------------

  Description:
    - tested the "NCM" coupled model
    - two voltage changes were input on the left side
    - the first input triggered an action potential
    - the second input occurred when the first node was
      in its refractory period, so no second action 
      potential was observed

  Input Files:
    - NCM_test-C.bat
    - NCM.ma
    - NCM_test-C.ev



Nerve Cell Membrane Test D
--------------------------

  Description:
    - tested the "NCM" coupled model
    - two voltage changes were input simultaneously on 
      both sides
    - two action potentials encountered one another in 
      the middle of the model, but did not pass through
      one another

  Input Files:
    - NCM_test-D.bat
    - NCM.ma
    - NCM_test-D.ev
