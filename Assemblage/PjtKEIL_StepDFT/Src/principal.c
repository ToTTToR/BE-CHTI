
#include "DriverJeuLaser.h"


int DFT_ModuleAuCarre(short int * Signal64ech,char k) ;
extern short int LeSignal;

int main(void)
{

// ===========================================================================
// ============= INIT PERIPH (faites qu'une seule fois)  =====================
// ===========================================================================

// Apr�s ex�cution : le coeur CPU est clock� � 72MHz ainsi que tous les timers
//LeSignal=LeSignal;
DFT_ModuleAuCarre(&LeSignal,40);

	
	

//============================================================================	
	
	
while	(1)
	{
	}
}

