#include "main.h"

void main()
{
	InitConsole();

	gamelevel = 0;
	gamestock = 3;

	while( 1 )
	{
		// Mikgames
		InitMikGamesStage();

		// Game intro
		InitIntroStage( 1 );
		InitIntroStage( 4 );
		InitIntroStage( 2 );

		// Logo
		InitLogoStage();

		// If we have jukebox before play
		if( dojukebox == 1 )
			InitJukeboxStage();

		// Init stage and players
		stagenum = 1;
		numplayers = gamestock;

		// Selector
		InitSelectorStage();

		// Stage looping
		while( stagenum < 10 )
		{
			if( stagenum == 0 )
				InitGameoverStage();
			else if( stagenum == 9 )
			{
				InitIntroStage( 5 );
				InitIntroStage( 3 );
			}
			else InitPlayStage();
		}
	}
}
