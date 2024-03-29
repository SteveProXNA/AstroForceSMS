#include "stage7middleboss.h"
#include "../funcs.h"
#include "../vars.h"

void DrawAracMoving( enemy *en )
{
	DrawSpriteArray( STAGE7MIDDLEBOSSBASE + ( ( ( en->enemyframe >> 1 ) % 2 ) * 24 ), en->enemyposx, en->enemyposy, 48, 32 );
}

void UpdateStage7MiddleBoss0( enemy *en )
{
	// Move and test for change
	en->enemyposy++;
	if( en->enemyposy >= 30 )
	{
		en->enemyparama = 2;
		en->enemyparamb = 0;
		en->enemyframe = 0;
	}
	// Draw arac moving
	DrawAracMoving( en );
}

void UpdateStage7MiddleBoss1( enemy *en )
{
	// Do pattern movement
	DoAracPatternMovement( en, aracmovingx, aracmovingy, aracmovingt );

	// Draw arac moving
	DrawAracMoving( en );
}

void UpdateStage7MiddleBoss2( enemy *en )
{
	// Shoot
	if( en->enemyframe < 41 )
		TestEnemyShootComplex( en, 8, 20, 24 );

	// Test for change
	if( en->enemyframe >= 80 )
	{
		en->enemyparama = 1;
		en->enemyframe = 0;
	}
	// Draw arac quiet
	DrawSpriteArray( STAGE7MIDDLEBOSSBASE, en->enemyposx, en->enemyposy, 48, 32 );
}

void FinishStage7MiddleBoss()
{
	// Nos cargamos las ara�illas
	KillEnemies( 1 );

	// Metemos un enemigo que retrase esto
	InitEnemy( 0, 0, STAGE7OBJECT );
}

void InitStage7MiddleBoss( enemy *en )
{
	// Disable scroll
	disablescroll = 1;
	en->enemyenergy *= 1;
}

unsigned char UpdateStage7MiddleBoss( enemy *en )
{
	// Spread blobs
	if( stageframe % 175 == 33 )
		InitEnemy( 32 + myRand() % 208, 0, MONSTERBLOB );
	if( stageframe % 175 == 161 )
		InitEnemy( 32 + myRand() % 208, 176, MONSTERBLOB );

	// Call custom function
	//changeBank(FIXEDBANKSLOT);
	if( 0 != updatestage7middlebossfunctions[ en->enemyparama ] )
		( *( updatestage7middlebossfunctions[ en->enemyparama ] ) )( en );

	// Return
	return 1;
}
