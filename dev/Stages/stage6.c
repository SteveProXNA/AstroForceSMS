#include "stage6.h"
#include "../General/scroller.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank6.h"
#include "../funcs.h"
#include "../vars.h"

void InitStage6()
{
	// Load tiles
	LoadTiles( ( unsigned char * ) stage6tiles_psgcompr, stage6tiles_psgcompr_bank );

	// Sprites

	// ORIGINAL
	InitStageSprites( stage6spriteslist, 3 );

	//InitStageSprites(stage6spriteslist,2);

	// Scripter
	InitScript( ( unsigned char * ) stage6script, 0 );

	// Scroller
	AddScrollers( ( signed int * ) stage6_scrollers, stage6_scrollers_num );

	// Palette Fix
	devkit_SMS_setBGPaletteColor( 9, 0 );
}

void UpdateStage6()
{
	unsigned char a;

	// Change bank
	changeBank( FIXEDBANKSLOT );

	// Palette effect
	a = ( stageframe >> 3 ) % 8;
	devkit_SMS_setBGPaletteColor( 2, stage6_fade_pink[ a ] );
	devkit_SMS_setBGPaletteColor( 3, stage6_fade_pink[ a ] );
	devkit_SMS_setBGPaletteColor( 13, stage6_fade_blue[ a ] );
	devkit_SMS_setBGPaletteColor( 15, stage6_fade_blue[ a ] );
	devkit_SMS_setBGPaletteColor( 14, stage6_fade_blue[ a ] );
}

