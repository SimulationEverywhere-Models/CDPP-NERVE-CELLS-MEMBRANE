#ifndef __ION_GENERATOR_H
#define __ION_GENERATOR_H

#include "atomic.h"
#include "except.h"


class Distribution;


class ion_generator : public Atomic
{
public:
	ion_generator(const string &name="ion_generator");
	~ion_generator();
	virtual string className() const {return "ion_generator";}

protected:
	Model &initFunction();
	Model &internalFunction(const InternalMessage &);
	Model &externalFunction( const ExternalMessage &)
	        {throw InvalidMessageException();}
	Model &outputFunction(const InternalMessage &);

private:
    // Model Ports
	const Port &out_Delta_V;

    // Model Parameters
	const float tau;
	const int Delta_V;

    // State Variables
	float sigma;
	
	// Other
	void advance();
	float rand();
	Distribution *dist;
			
};	// class ion_generator


#endif   //__ION_GENERATOR_H
