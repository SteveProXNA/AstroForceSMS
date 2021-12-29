#include "stage4object.h"
#include "../General/scroller.h"
#include "../funcs.h"
#include "../vars.h"

unsigned char UpdateStage4Object( enemy *en )
{
	if( en->enemyframe > 128 )
	{
		// Pasamos al siguiente paso de scroll
		updatescrollact();

		// Ya no hay mas rayos
		stage4playrays = 0;

		// Scripter
		InitScript( ( unsigned char * )stage4scriptb, 0 );

		// Exit
		return 0;
	}
	else return 1;
}


