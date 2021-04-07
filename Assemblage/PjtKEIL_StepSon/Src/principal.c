

#include "DriverJeuLaser.h"

void CallbackSon(void);
int PeriodeSonMicrosec;

int main(void)
{

// ===========================================================================
// ============= INIT PERIPH (faites qu'une seule fois)  =====================
// ===========================================================================

// Après exécution : le coeur CPU est clocké à 72MHz ainsi que tous les timers
CLOCK_Configure();
Active_IT_Debordement_Timer( TIM4, 2, CallbackSon );
Timer_1234_Init_ff( TIM4, PeriodeSonMicrosec*72);

	
	

//============================================================================	
	
	
while	(1)
	{
	}
}

