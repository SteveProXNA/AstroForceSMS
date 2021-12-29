#include "stage7.h"
#include "../General/map.h"
#include "../General/scroller.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank7.h"
#include "../banks/bank9.h"
#include "../funcs.h"
#include "../vars.h"

void CheckStage7PlayerMovement()
{
	unsigned int ny;
	unsigned char l, m;
	unsigned int nl;

	// The bank!!!
	changeBank( mapbank );


	// The collision
	ny = ( ( mappositiony >> 2 ) + playery ) >> 3;
	l = maplines[ ny ];
	nl = l;
	nl = ( nl << 6 ) + ( ( playerx >> 3 ) << 1 );
	l = maptiles[ nl ];
	m = maptiles[ nl + 1 ];

	if( l == 12 )
	{
		if( m == 0 )
			playerx--;
		if( m == 2 )
			playerx++;
	}

}

void UpdateStage7()
{
	unsigned int sf;

	// The bank	
	changeBank( stage7animtiles_bin_bank );

	// Center scroll
	sf = ( ( stageframe % 16 ) << 2 );
	devkit_UNSAFE_SMS_VRAMmemcpy64( 0, ( unsigned char * ) stage7animtilese_bin + sf );
	devkit_UNSAFE_SMS_VRAMmemcpy64( 64, ( unsigned char * ) stage7animtilese_bin + sf + 128 );

	// Only if scroll
	if( disablescroll == 0 )
	{

		// Middle scroll
		sf = ( ( ( stageframe >> 2 ) % 16 ) << 2 );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 256, ( unsigned char * ) stage7animtilesd_bin + sf );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 320, ( unsigned char * ) stage7animtilesd_bin + sf + 128 );


		// Far scroll
		sf = ( ( ( stageframe >> 3 ) % 16 ) << 2 );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 128, ( unsigned char * ) stage7animtiles_bin + sf );
		devkit_UNSAFE_SMS_VRAMmemcpy64( 192, ( unsigned char * ) stage7animtiles_bin + sf + 128 );
	}

	// Water falls
	devkit_UNSAFE_SMS_VRAMmemcpy32( 384, ( unsigned char * ) stage7animtilesc_bin + ( ( ( stageframe >> 1 ) % 8 ) << 5 ) );

	// Check for playerx movement
	if( stageframe % 2 == 0 )
		CheckStage7PlayerMovement();

}

// Pantalla de juego
void InitStage7()
{
	// Load tiles
	LoadTiles( ( unsigned char * ) stage7tiles_psgcompr, stage7tiles_psgcompr_bank );

	// Sprites
	InitStageSprites( stage7spriteslist, 6 );

	/*
	InitMonsterBlobSprite();
	InitMonsterHeadSprite();
	InitMonsterMissilSprite();
	InitStage7MiddleBossSprite();
	InitStage7EndBossSprite();
	InitWarningSprite();
	*/

	// Scroller
	AddScrollers( ( signed int * ) stage7_scrollers, stage7_scrollers_num );

	// Map static enemies
	SetStaticEnemies( ( unsigned int * ) stage7_statics, stage7_statics_bank );

	// Custom velocity in this stage
	playstageshootspeed -= 1;
}

unsigned char CheckCollisionStage7( unsigned char x, unsigned char y )
{
	if( getTileAt( x, y )>29 )return 1;
	return 0;
}
