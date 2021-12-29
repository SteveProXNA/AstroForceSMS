#include "logostage.h"
#include "../General/map.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank3.h"
#include "../banks/bank6.h"
#include "../funcs.h"
#include "../vars.h"

// ADRIANA
void InitLogoStage()
{
	// General init
	InitStage();

	// Lo volvemos a apagar
	devkit_SMS_displayOff();

	// Load palette
	LoadBGPalette( ( unsigned char * ) logopalette_bin, logopalette_bin_bank );

	// Load tiles
	LoadTiles( ( unsigned char * ) logotiles_psgcompr, logotiles_psgcompr_bank );

	// The tilemap
	SetMapLines( ( unsigned char * ) logotilemap_l, logotilemap_l_size, ( unsigned char * ) logotilemap_m );

	// Init map
	InitMap( logopalette_bin_bank );

	// Labels
	WriteText( "MARCH 2017,MIKGAMES", 6, 21 );
	WriteText( "ALL RIGHTS RESERVED", 6, 22 );

	// Lo volvemos a encender
	devkit_SMS_displayOn();

	// Rom bank
	PlayMusic( ( unsigned char * ) logo_psg, logo_psg_bank, 0 );

	// We don't want jukebox
	dojukebox = 0;

	// Bucle
	while( 1 )
	{
		// Update stage
		UpdateStage();

		if( ( ( stageframe >> 5 ) % 2 ) == 0 )
		{
			WriteText( "PUSH FIRE BUTTON", 8, 14 );
		}
		else
		{
			WriteText( "                ", 8, 14 );
		}

		// Play?
		if( keystatus&devkit_PORT_A_KEY_1() )
		{
			dojukebox = 0;
			return;
		}

		// Jukebox?
		if( keystatus&devkit_PORT_A_KEY_2() )
		{
			dojukebox = 1;
			return;
		}

		// Update psg
		UpdatePSG();
	}
}
