#include "stage2.h"
#include "../General/map.h"
#include "../General/scroller.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank3.h"
#include "../banks/bank9.h"
#include "../funcs.h"
#include "../vars.h"

unsigned char CheckCollisionStage2( unsigned char x, unsigned char y )
{
	unsigned char l = getTileAt( x, y );
	if( ( l == 2 ) || ( l == 3 ) )
		return 1;
	return 0;
}

void UpdateStage2()
{
	// The bank	
	changeBank( firetiles_bin_bank );

	// Parallax
	devkit_UNSAFE_SMS_VRAMmemcpy64( 0, ( unsigned char * ) firetiles_bin + ( ( ( stageframe >> 2 ) % 16 ) << 6 ) );
}

// Pantalla de juego
void InitStage2()
{
	// Load tiles
	LoadTiles( ( unsigned char * ) stage2tiles_psgcompr, stage2tiles_psgcompr_bank );

	// Sprites
	InitStageSprites( stage2spriteslist, 8 );

	/*
	InitVulcanVulcanSprite();
	InitVulcanLaserSprite();
	InitVulcanLavaSprite();
	InitVulcanTankSprite();
	InitVulcanStationSprite();
	InitVulcanBirdSprite();
	InitStage2EndBossSprite();
	InitWarningSprite();
	*/

	// Map static enemies
	SetStaticEnemies( ( unsigned int * ) stage2_statics, stage2_statics_bank );

	// Scroller
	AddScrollers( ( signed int * ) stage2_scrollers, stage2_scrollers_num );
}

