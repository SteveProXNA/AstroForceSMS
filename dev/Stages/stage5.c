#include "stage5.h"
#include "stage3star.h"
#include "../General/map.h"
#include "../General/scripter.h"
#include "../General/scroller.h"
#include "../Players/playstage.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank6.h"
#include "../banks/fixedbank.h"
#include "../defines.h"
#include "../funcs.h"
#include "../vars.h"

void InitStage5()
{
	unsigned char a;

	// Load tiles
	LoadTiles( ( unsigned char * ) stage5tiles_psgcompr, stage5tiles_psgcompr_bank );

	// Sprites
	InitStageSprites( stage5spriteslist, 6 );

	// Scripter
	InitScript( ( unsigned char * ) stage5script, 0 );

	// Scroller
	AddScrollers( ( unsigned int * ) stage5_scrollers, stage5_scrollers_num );

	// Clouds
	LoadSprite( ww2cloud_psgcompr, STAGE5CLOUDBASE, ww2cloud_psgcompr_bank );
	for( a = 0; a < MAXSTAGE5CLOUDS; a++ )
		InitStage3Star( &stage3stars[ a ], 2 + a );

	// Map static enemies
	SetStaticEnemies( ( unsigned int * ) stage5_statics, stage5_statics_bank );
}

void UpdateStage5()
{
	unsigned char a;

	// The bank	
	changeBank( watertiles_bin_bank );

	// Water Parallax
	devkit_UNSAFE_SMS_VRAMmemcpy32( 0, ( unsigned char * ) watertiles_bin + ( ( ( stageframe >> 1 ) % 8 ) << 5 ) );

	// Clouds
	for( a = 0; a < MAXSTAGE5CLOUDS; a++ )
	{
		UpdateStage5Cloud( &stage3stars[ a ] );
	}
}
