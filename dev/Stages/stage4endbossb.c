#include "stage4endbossb.h"
#include "../devkit/_sms_manager.h"
#include "../vars.h"

void InitStage4EndBossB( enemy *en )
{
	// Velocity
	if( en->enemyposx <= 120 )
		en->enemyparama = 16;
}

unsigned char UpdateStage4EndBossB( enemy *en )
{
	// Move and check
	en->enemyposx += en->enemyparama - 8;
	if( ( en->enemyposx < 12 ) || ( en->enemyposx > 230 ) )return 0;

	// Draw
	devkit_SMS_addSprite( en->enemyposx, en->enemyposy, ( int ) ( STAGE4ENDBOSSBASEB ) );
	devkit_SMS_addSprite( en->enemyposx + 8, en->enemyposy, ( int ) ( STAGE4ENDBOSSBASEB + 1 ) );

	// Good exit
	return 1;
}
