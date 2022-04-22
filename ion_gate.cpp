#include "message.h"
#include "mainsimu.h"
#include "ion_gate.h"


ion_gate::ion_gate(const string &name): 
        Atomic(name), 
        in_Delta_V(addInputPort("in_Delta_V")), 
        in_V(addInputPort("in_V")), 
        out_Delta_V(addOutputPort("out_Delta_V")),
        out_g(addOutputPort("out_g")),
        V_th(str2Value(MainSimulator::Instance().getParameter(description(), "V_th"))),
        V_sign(str2Value(MainSimulator::Instance().getParameter(description(), "V_sign"))),
        delay(str2Value(MainSimulator::Instance().getParameter(description(), "delay")))
{
}


Model &ion_gate::initFunction()
{
	Delta_V = 0;
	V = 0;
	g = gamma();
    r = 0;
    r_is_inf = true;
	advance();
	return *this;
}


Model &ion_gate::externalFunction(const ExternalMessage &msg)
{
	float e = msg.time().asMsecs() - lastChange().asMsecs();
	if (msg.port() == in_Delta_V) {
		int Delta_V_in = static_cast<int>(msg.value());
		if (g) {
			Delta_V = Delta_V + Delta_V_in;
		}
		if (!r_is_inf) {
			r = r - e;
		}
	}
	else if (msg.port() == in_V) {
		int V_in = static_cast<float>(msg.value());
		V = V_in;
		if (!r_is_inf) {
			r = r - e;
		}
		if (r_is_inf) {
			rho();
		}
	}
	advance();
	return *this;
}


Model &ion_gate::internalFunction(const InternalMessage &)
{
	if (Delta_V != 0) {
		Delta_V = 0;
	}
	else if (Delta_V == 0) {
		g = !g;
		rho();
	}
	advance();
	return *this ;
}


Model &ion_gate::outputFunction(const InternalMessage &msg)
{
	if (Delta_V != 0) {
    	sendOutput(msg.time(), out_Delta_V, Delta_V);
	}
	else if (Delta_V == 0) {
    	sendOutput(msg.time(), out_g, !g);
	}
	return *this ;
}


void ion_gate::advance()
{
    if (Delta_V != 0) {
		holdIn(active, Time::Zero);
	}
	else if (Delta_V == 0) {
    	if (!r_is_inf) {
	   		holdIn(active, Time(0, 0, 0, r));
    	}
    	else if (r_is_inf) {
    		passivate();
    	}
	}
}


void ion_gate::rho()
{
	bool g_is_gamma = (g == gamma());
    if (!g_is_gamma) {
    	r = delay;
    	r_is_inf = false;
    }
    else if (g_is_gamma) {
    	r = 0;
    	r_is_inf = true;
    }
}


bool ion_gate::gamma()
{
	return (V - V_th)*V_sign >= 0;
}
