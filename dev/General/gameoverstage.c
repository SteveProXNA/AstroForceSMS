#include "gameoverstage.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank3.h"
#include "../banks/bank8.h"
#include "../funcs.h"
#include "../vars.h"

void InitGameoverStage()
{
	// General init
	InitStage();

	// Lo volvemos a apagar
	devkit_SMS_displayOff();

	// Load palette
	LoadBGPalette( ( unsigned char * ) logopalette_bin, logopalette_bin_bank );

	// Labels
	WriteText( "GAME  OVER", 11, 12 );
	WriteText( "PRESS FIRE TO CONTINUE", 5, 14 );

	// Lo volvemos a encender
	devkit_SMS_displayOn();

	// Rom bank
	PlayMusic( ( unsigned char * ) gameover_psg, gameover_psg_bank, 0 );

	// Bucle
	while( 1 )
	{
		// Update stage
		UpdateStage();

		// Play?
		if( keystatus&devkit_PORT_A_KEY_1() )
		{
			// Init stage and players
			stagenum = laststagenum;
			numplayers = gamestock;

			// Exit
			return;
		}

		// Exit if done
		if( !devkit_PSGGetStatus() )
		{
			// Set an stagenum to exit gameover_psg
			stagenum = 10;

			// Fueri
			return;
		}

		// Update psg
		UpdatePSG();
	}
}
