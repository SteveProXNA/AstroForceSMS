#include "stage1.h"
#include "../Enemies/enemy.h"
#include "../General/map.h"
#include "../General/scroller.h"
#include "../Players/playstage.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank10.h"
#include "../banks/bank11.h"
#include "../banks/fixedbank.h"
#include "../funcs.h"
#include "../vars.h"

// Music replayed?
unsigned char stage1musicreplayed;

void UpdateStage1()
{
	// The bank
	changeBank( scrolltilestage1_bin_bank );

	// Parallax B
	if( stageframe4mod == 0 )
	{
		devkit_UNSAFE_SMS_VRAMmemcpy32( 96, ( unsigned char * ) scrolltilestage1_bin + 128 + ( ( ( stageframe >> 2 ) % 8 ) << 2 ) );

		// Parallax
		if( ( stageframe % 8 ) == 0 )
			devkit_UNSAFE_SMS_VRAMmemcpy64( 0, ( unsigned char * ) scrolltilestage1_bin + ( ( ( stageframe >> 3 ) % 16 ) << 2 ) );
	}
	devkit_UNSAFE_SMS_VRAMmemcpy32( 224, ( unsigned char * ) animtilestage1_bin + ( ( ( stageframe >> 2 ) % 3 ) << 5 ) );

	// Palette
	changeBank( FIXEDBANKSLOT );
	devkit_SMS_setBGPaletteColor( 15, stage1_flashpalette[ ( stageframe >> 2 ) % 8 ] );

	// Change music???
	if( stage1musicreplayed == 0 )
		if( !devkit_PSGGetStatus() )
		{
			PlayMusic( ( unsigned char* ) stage7_psg, stage7_psg_bank, 1 );
			stage1musicreplayed = 1;
		}
}

// Pantalla de juego
void InitStage1()
{
	// Custom velocity in this stage
	playstageshootspeed -= 1;

	// Load tiles
	LoadTiles( ( unsigned char* ) stage1tiles_psgcompr, stage1tiles_psgcompr_bank );

	// Sprites
	InitStageSprites( stage1spriteslist, 8 );

	/*
	InitFortressSearcherSprite();
	InitFortressDoorSprite();
	InitFortressWaveSprite();
	InitFortressPhantomSprite();
	InitFortressCannonSprite();
	InitStage1MiddleBossSprite();
	InitStage1EndBossSprite();
	InitWarningSprite();
	*/

	// Scroller
	AddScrollers( ( unsigned int* ) stage1_scrollers, stage1_scrollers_num );

	// Map static enemies
	SetStaticEnemies( ( unsigned int* ) stage1_statics, stage1_statics_bank );

	// Replayment of stage 1
	stage1musicreplayed = 0;
}

unsigned char CheckCollisionStage1( unsigned char x, unsigned char y )
{
	if( getTileAt( x, y ) > 5 )
		return 1;
	return 0;
}
