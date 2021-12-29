#include "stage4.h"
#include "../General/scroller.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank4.h"
#include "../funcs.h"
#include "../vars.h"

void UpdateStage4()
{
	unsigned char p;

	if( stage4playrays == 1 )
	{
		// Get frame
		p = min( ( stageframe >> 3 ) % 48, 15 );

		// Bank
		//changeBank(FIXEDBANKSLOT);

		// Storm effect
		devkit_SMS_setBGPaletteColor( 12, stage4_stormpalette[ p ] );

		// Storm sound
		if( stage4_stormpalette[ p ] == 0x3f )
			PlaySound( ( unsigned char * ) ray_psg, 1 );
	}
	else
	{
		// Sea palette
		devkit_SMS_setBGPaletteColor( 4, stage4_seapalette[ ( stageframe >> 4 ) % 4 ] );
	}
}

// Pantalla de juego
void InitStage4()
{
	// Load tiles
	LoadTiles( ( unsigned char * ) stage4tiles_psgcompr, stage4tiles_psgcompr_bank );


	// Sprites
	InitStageSprites( stage4spriteslist, 10 );

	// Scroller
	AddScrollers( ( signed int * ) stage4_scrollers, stage4_scrollers_num );

	// Scripter
	InitScript( ( unsigned char * ) stage4script, 0 );

	// Rays
	stage4playrays = 1;
}

