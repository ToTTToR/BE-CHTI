#include <stdlib.h>
#include <stdio.h>
#include "DriverJeuLaser.h"


int DFT_ModuleAuCarre(short int * Signal64ech,char k) ;
extern short int LeSignal[64];

int main(void)
{

// ===========================================================================
// ============= INIT PERIPH (faites qu'une seule fois)  =====================
// ===========================================================================

// Après exécution : le coeur CPU est clocké à 72MHz ainsi que tous les timers
//LeSignal=LeSignal;
	int tabRes[64];
	for (int i=0;i<64;i++)
		tabRes[i]=DFT_ModuleAuCarre(LeSignal,i);
	

//============================================================================	
	
	
while	(1)
	{
	}
}

