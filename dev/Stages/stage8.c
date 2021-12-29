#include "stage8.h"
#include "../General/map.h"
#include "../General/scroller.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank13.h"
#include "../banks/bank14.h"
#include "../funcs.h"
#include "../vars.h"

void UpdateStage8()
{
	unsigned int sf;

	// The BANK!!!
	changeBank( stage8animtilescloudsmov_bin_bank );

	if( ( stage8phase == 0 ) || ( stage8phase == 2 ) )
	{
		// Clouds
		sf = ( ( 16 - ( ( stageframe << 1 ) % 16 ) ) << 2 );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 256, ( unsigned char * ) stage8animtilescloudsmov_bin + sf );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 320, ( unsigned char * ) stage8animtilescloudsmov_bin + sf + 128 );
	}

	else if( stage8phase == 1 )
	{
		// RSG wall
		sf = ( ( stageframe >> 1 ) % 8 )*( 7 * 32 );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 0, ( unsigned char * ) stage8animtilesamov_bin + sf );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 64, ( unsigned char * ) stage8animtilesamov_bin + sf + 64 );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 128, ( unsigned char * ) stage8animtilesamov_bin + sf + 128 );
		devkit_UNSAFE_SMS_VRAMmemcpy32( 192, ( unsigned char * ) stage8animtilesamov_bin + sf + 192 );
	}

	else if( stage8phase == 3 )
	{
		// RSG wall
		sf = ( ( stageframe >> 1 ) % 8 )*( 7 * 32 );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 384, ( unsigned char * ) stage8animtilesbmov_bin + sf );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 384 + 64, ( unsigned char * ) stage8animtilesbmov_bin + sf + 64 );
		devkit_UNSAFE_SMS_VRAMmemcpy32( 384 + 128, ( unsigned char * ) stage8animtilesbmov_bin + sf + 128 );
	}

	// Sea palette
	changeBank( FIXEDBANKSLOT );
	devkit_SMS_setBGPaletteColor( 15, stage8animpalette[ ( stageframe >> 2 ) % 14 ] );
}

// Pantalla de juego
void InitStage8()
{
	// Load tiles
	LoadTiles( ( unsigned char * ) stage8tiles_psgcompr, stage8tiles_psgcompr_bank );

	// Sprites
	InitStageSprites( ( unsigned char * ) stage8spriteslist, 7 );

	// Map static enemies
	SetStaticEnemies( ( unsigned int * ) stage8_statics, stage8_statics_bank );

	// Scroller
	AddScrollers( ( signed int * ) stage8_scrollers, stage8_scrollers_num );

	// The phase
	stage8phase = 0;
}
