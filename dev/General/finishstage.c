#include "finishstage.h"
#include "../General/scripter.h"
#include "../banks/bank2.h"
#include "../banks/bank4.h"
#include "../banks/bank10.h"
#include "../banks/fixedbank.h"
#include "../defines.h"
#include "../funcs.h"
#include "../vars.h"

void InitFinishStage()
{
	// Cargamos los graficos a la pantalla
	LoadGraphics( (unsigned char *) endingstagetiles_psgcompr, ( unsigned char * ) endingstagetilemap_bin, endingstagetilemap_bin_size, endingstagetiles_psgcompr_bank );

	// El sprite de la nave lateral
	LoadSprite( ( unsigned char * ) introsideplayer_psgcompr, INTROSIDEPLAYERBASE, introsideplayer_psgcompr_bank );

	// Estrellas
	LoadSprite( introstar_psgcompr, INTROSTARBASE, introstar_psgcompr_bank );

	// Rom bank
	PlayMusic( ( unsigned char * ) ending_psg, ending_psg_bank, 0 );

	// Scripter
	InitScript( ( unsigned char* ) finishscript, ( unsigned char** ) finishlabels );

	// To keep exit
	stagenum = 10;
}
