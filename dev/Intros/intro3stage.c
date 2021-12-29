#include "intro3stage.h"
#include "../General/scripter.h"
#include "../banks/bank2.h"
#include "../banks/bank4.h"
#include "../banks/bank5.h"
#include "../banks/fixedbank.h"
#include "../defines.h"
#include "../funcs.h"
#include "../vars.h"

void InitIntro3Stage()
{
	// Warning sprite
	LoadSprite( ( unsigned char * ) warning_psgcompr, WARNINGBASE, warning_psgcompr_bank );

	// Load palette
	LoadBGPalette( ( unsigned char * ) personspalette_bin, personspalette_bin_bank );

	// Load tiles
	LoadTiles( ( unsigned char * ) persons_psgcompr, persons_psgcompr_bank );

	// Music
	PlayMusic( ( unsigned char * ) intro3_psg, intro3_psg_bank, 0 );

	// Scripter
	InitScript( ( unsigned char * ) intro3script, ( unsigned char ** ) intro3labels );
}
