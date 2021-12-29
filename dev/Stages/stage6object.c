#include "stage6object.h"
#include "../General/scroller.h"
#include "../banks/bank12.h"
#include "../funcs.h"
#include "../vars.h"

unsigned char UpdateStage6Object( enemy *en )
{
	if( en->enemyframe > 128 )
	{
		// Pasamos al siguiente paso de scroll
		updatescrollact();

		// Music
		PlayMusic( ( unsigned char * ) escape_psg, escape_psg_bank, 1 );

		// Script
		InitScript( ( unsigned char * ) stage6scriptb, 0 );

		// Exit
		return 0;
	}
	else return 1;
}


