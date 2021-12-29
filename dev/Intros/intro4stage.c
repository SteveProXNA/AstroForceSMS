#include "intro4stage.h"
#include "../General/scripter.h"
#include "../banks/bank2.h"
#include "../banks/bank12.h"
#include "../banks/fixedbank.h"
#include "../funcs.h"

void InitIntro4Stage()
{
	// Cargamos los graficos a la pantalla
	LoadGraphics( ( unsigned char * ) introstage3tiles_psgcompr, ( unsigned char * ) introstage3tilemap_bin, introstage3tilemap_bin_size, introstage3tiles_psgcompr_bank );

	// Music
	PlayMusic( ( unsigned char * ) silence_psg, silence_psg_bank, 0 );

	// Scripter
	InitScript( ( unsigned char * ) intro4script, 0 );
}
