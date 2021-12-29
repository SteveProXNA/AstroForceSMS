#include "stage3.h"
#include "stage3star.h"
#include "../General/map.h"
#include "../General/scroller.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank7.h"
#include "../banks/bank10.h"
#include "../funcs.h"
#include "../vars.h"

void InitStage3()
{
	unsigned char a;

	// Load tiles
	LoadTiles( ( unsigned char * ) stage3tiles_psgcompr, stage3tiles_psgcompr_bank );

	// Sprites
	InitStageSprites( ( unsigned char * ) stage3spriteslist, 12 );

	// Scripter
	InitScript( ( unsigned char * ) stage3script, 0 );

	// Map static enemies
	SetStaticEnemies( ( unsigned int * ) stage3_statics, stage3_statics_bank );

	// Scroller
	AddScrollers( ( signed int * ) stage3_scrollers, stage3_scrollers_num );

	// Stars
	LoadSprite( introstar_psgcompr, STAGE3STARBASE, introstar_psgcompr_bank );
	for( a = 0; a < MAXSTAGE3STARS; a++ )
		InitStage3Star( &stage3stars[ a ], ( myRand() % 3 ) + 2 );
}

void UpdateStage3()
{
	unsigned char a;
	unsigned int sf;

	// The bank
	changeBank( spaceanimtiles_bin_bank );

	// Double scroll
	sf = ( ( stageframe >> 2 ) % ( 7 * 8 ) ) << 2;

	// Soltamos las tiles
	devkit_UNSAFE_SMS_VRAMmemcpy64( 32, ( unsigned char * ) spaceanimtiles_bin + sf );
	devkit_UNSAFE_SMS_VRAMmemcpy64( 32 + 64, ( unsigned char * ) spaceanimtiles_bin + sf + 64 );
	devkit_UNSAFE_SMS_VRAMmemcpy64( 32 + 128, ( unsigned char * ) spaceanimtiles_bin + sf + 128 );
	devkit_UNSAFE_SMS_VRAMmemcpy32( 32 + 192, ( unsigned char * ) spaceanimtiles_bin + sf + 192 );

	// Stars
	for( a = 0; a < MAXSTAGE3STARS; a++ )
		UpdateStage3Star( &stage3stars[ a ] );
}
