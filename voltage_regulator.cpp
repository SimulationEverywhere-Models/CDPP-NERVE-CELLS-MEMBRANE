#include "message.h"
#include "mainsimu.h"
#include "voltage_regulator.h"


voltage_regulator::voltage_regulator(const string &name): 
        Atomic(name), 
        in_Delta_V(addInputPort("in_Delta_V")), 
        out_V(addOutputPort("out_V")),
        R(str2Value(MainSimulator::Instance().getParameter(description(), "R")))
{
}


Model &voltage_regulator::initFunction()
{
	V = 0;
    r = R;
    ext = false;
	advance();
	return *this;
}


Model &voltage_regulator::externalFunction(const ExternalMessage &msg)
{
	float e = msg.time().asMsecs() - lastChange().asMsecs();
	int Delta_V = static_cast<int>(msg.value());
	int V_new = V + Delta_V;
	if (V_new != 0) {
		r = r - fabs(V)*e;
	}
	if (V_new == 0) {
		r = R;
	}
	V = V_new;
	ext = true;
	advance();
	return *this;
}


Model &voltage_regulator::internalFunction(const InternalMessage &)
{
	if (ext) {
		ext = false;
	}
	else if (!ext) {
		V = V - sgn(V);
		r = R;
	}
	advance();
	return *this ;
}


Model &voltage_regulator::outputFunction(const InternalMessage &msg)
{
	if (ext) {
		sendOutput(msg.time(), out_V, V);
	}
	else if (!ext) {
		sendOutput(msg.time(), out_V, V - sgn(V));
	}
	return *this ;
}


void voltage_regulator::advance()
{
	if (ext) {
		holdIn(active, Time::Zero);
	}
	else if (!ext) {
        if (V != 0) {
        	holdIn(active, Time(0, 0, 0, int(float(r)/fabs(V) + 0.5)));
    	}
    	else if (V == 0) {
       		passivate();
    	}
	}
}


float voltage_regulator::sgn(float x)
{
	float y = 0;
	if (x > 0) {
		y = 1;
	}
	else if (x < 0) {
		y = -1;
	}
	return y;
}

