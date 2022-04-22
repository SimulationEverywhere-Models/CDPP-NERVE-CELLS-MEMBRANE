#include "modeladm.h" 
#include "mainsimu.h"

#include "ion_generator.h"
#include "ion_gate.h"
#include "voltage_regulator.h"


void MainSimulator::registerNewAtomics()
{
	SingleModelAdm::Instance().registerAtomic(NewAtomicFunction<ion_generator>(), "ion_generator");   
	SingleModelAdm::Instance().registerAtomic(NewAtomicFunction<ion_gate>(), "ion_gate");   
	SingleModelAdm::Instance().registerAtomic(NewAtomicFunction<voltage_regulator>(), "voltage_regulator");   
} 

