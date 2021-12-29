#include "stage2object.h"
#include "../vars.h"

unsigned char UpdateStage2Object( enemy *en )
{
	if( en->enemyframe > 80 )
	{
		disablescroll = 0;
		return 0;
	}
	else return 1;
}
