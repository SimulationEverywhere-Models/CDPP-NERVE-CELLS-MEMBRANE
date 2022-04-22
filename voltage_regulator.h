#ifndef __VOLTAGE_REGULATOR_H
#define __VOLTAGE_REGULATOR_H

#include "atomic.h"     // class Atomic


class voltage_regulator : public Atomic
{
public:
	voltage_regulator(const string &name);
	virtual string className() const {return "voltage_regulator";}

protected:
	Model &initFunction();
	Model &externalFunction(const ExternalMessage &);
	Model &internalFunction(const InternalMessage &);
	Model &outputFunction(const InternalMessage &);

private:

    // Model Ports
	const Port &in_Delta_V;
	const Port &out_V;
	
	// Model Parameters
	const float R;
	
	// State Variables
	int V;
	float r;
	bool ext;
	
	// Other
	void advance();
	float sgn(float x);
	float abs(float x);
};


#endif   //__VOLTAGE_REGULATOR_H
