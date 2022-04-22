#ifndef __ION_GATE_H
#define __ION_GATE_H

#include "atomic.h"     // class Atomic


class ion_gate : public Atomic
{
public:
	ion_gate(const string &name);
	virtual string className() const {return "ion_gate";}

protected:
	Model &initFunction();
	Model &externalFunction(const ExternalMessage &);
	Model &internalFunction(const InternalMessage &);
	Model &outputFunction(const InternalMessage &);

private:

    // Model Ports
	const Port &in_Delta_V;
	const Port &in_V;
	const Port &out_Delta_V;
	const Port &out_g;
	
	// Model Parameters
	const float V_th;
	const int V_sign;
	const float delay;
	
	// State Variables
	int Delta_V;
	int V;
	bool g;
	float r;
	bool r_is_inf;
	
	// Other
	void advance();
	void rho();
	bool gamma();
};


#endif   //__ION_GATE_H
