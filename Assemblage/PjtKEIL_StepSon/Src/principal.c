

#include "DriverJeuLaser.h"

void CallbackSon(void);
int PeriodeSonMicrosec;

int main(void)
{

// ===========================================================================
// ============= INIT PERIPH (faites qu'une seule fois)  =====================
// ===========================================================================

// Apr�s ex�cution : le coeur CPU est clock� � 72MHz ainsi que tous les timers
CLOCK_Configure();
Active_IT_Debordement_Timer( TIM4, 2, CallbackSon );
Timer_1234_Init_ff( TIM4, PeriodeSonMicrosec*72);

	
	

//============================================================================	
	
	
while	(1)
	{
	}
}

