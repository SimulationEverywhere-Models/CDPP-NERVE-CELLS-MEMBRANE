#include "message.h"
#include "mainsimu.h"
#include "distri.h"
#include "strutil.h"
#include "ion_generator.h"


ion_generator::ion_generator(const string &name): 
        Atomic(name), 
        out_Delta_V(addOutputPort("out_Delta_V")),
        tau(str2Value(MainSimulator::Instance().getParameter(description(), "tau"))),
        Delta_V(str2Value(MainSimulator::Instance().getParameter(description(), "Delta_V")))
{
    dist = Distribution::create("exponential");
	dist->setVar(0, tau);
}


ion_generator::~ion_generator()
{
	delete dist;
}


Model &ion_generator::initFunction()
{
	sigma = rand();
	advance();
	return *this ;
}


Model &ion_generator::internalFunction( const InternalMessage & )
{
	sigma = rand();
	advance();
	return *this ;
}


Model &ion_generator::outputFunction( const InternalMessage &msg )
{
	sendOutput(msg.time(), out_Delta_V, Delta_V) ;
	return *this ;
}


void ion_generator::advance()
{
	holdIn(active, sigma);
}


float ion_generator::rand()
{
	return fabs(dist->get())/1000.0;
}


