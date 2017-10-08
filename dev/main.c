#include "main.h"

void main()
{
	InitConsole();

	gamelevel=0;
	gamestock=3;
	
	while(1)
	{
		// Testing
		/*
		stagenum=8;
		numplayers=6;
		InitPlayerConstants();
		InitPlayer();
		InitPlayStage();
		*/
			
		// Mikgames
		InitMikGamesStage();
		
		// Game intro
		InitIntroStage(1);
		InitIntroStage(4);
		InitIntroStage(2);
		
		// Logo
		InitLogoStage();		

		// If we have jukebox before play
		if(dojukebox==1)
			InitJukeboxStage();
		
		// Selector
		InitSelectorStage();
		
		// Init stage and players
		stagenum=1;
		numplayers=gamestock;

		// Stage looping
		while(stagenum<10)
		{
			if(stagenum==0)
				InitGameoverStage();
			else if(stagenum==9)
			{
				InitIntroStage(5);
				InitIntroStage(3);
			}
			else InitPlayStage();
		}
	}
}

SMS_EMBED_SEGA_ROM_HEADER(9999, 0);
SMS_EMBED_SDSC_HEADER(1, 0, 2017, 9, 15, "StevePro Studios", "Astro Force", "Convert example as scalable SMS projec");
