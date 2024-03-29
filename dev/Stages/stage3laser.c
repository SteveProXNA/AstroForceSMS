#include "stage3laser.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../funcs.h"
#include "../vars.h"

void InitStage3Laser( enemy *en )
{
	// Velocity
	en->enemyparama = stage3laservelx[ en->enemytype - STAGE3LASERUP ];
	en->enemyparamb = stage3laservely[ en->enemytype - STAGE3LASERUP ];
}

unsigned char UpdateStage3Laser( enemy *en )
{
	// Move and check X
	en->enemyposx += en->enemyparama - 8;
	if( ( en->enemyposx < 8 ) || ( en->enemyposx > 240 ) )return 0;

	// Move and check Y
	en->enemyposy += en->enemyparamb - 8;
	if( ( en->enemyposy < 8 ) || ( en->enemyposy > 188 ) )return 0;

	// Draw
	devkit_SMS_addSprite( en->enemyposx, en->enemyposy, STAGE3ENDBOSSBASE + 16 + sprite82anim );

	// Good exit
	return 1;
}

