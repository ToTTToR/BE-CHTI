
#include "GestionSon.h"
#include "DriverJeuLaser.h"

void CallbackSon(void);


void StartSon(){
	Iterateur = 0;
}

int main(void)
{

// ===========================================================================
// ============= INIT PERIPH (faites qu'une seule fois)  =====================
// ===========================================================================

// Après exécution : le coeur CPU est clocké à 72MHz ainsi que tous les timers
CLOCK_Configure();
Active_IT_Debordement_Timer( TIM4, 2, CallbackSon );
Timer_1234_Init_ff( TIM4, 72*91);
PWM_Init_ff( TIM3, 3, 720);
GPIO_Configure(GPIOB, 0, OUTPUT, ALT_PPULL);

	
	

//============================================================================	
	
	
while	(1)
	{
		//for(int i=0;i<1000000;i++){}
		//StartSon();
	}
}

