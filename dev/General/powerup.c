#include "powerup.h"
#include "../banks/bank2.h"
#include "../banks/bank10.h"
#include "../funcs.h"
#include "../vars.h"

void InitPowerupSprites()
{
	LoadSprite( powerup_psgcompr, POWERUPBASE, powerup_psgcompr_bank );
}

void InitPowerups()
{
	InitPowerupSprites();
}

void UpdatePowerup()
{
	if( powerupt != 0 )
	{
		if( stageframe % 8 == 0 )powerupv++;
		powerupy += powerupv;
		DrawSpriteArray( POWERUPBASE - 2 + ( powerupt << 1 ), powerupx, powerupy, 16, 8 );
		if( powerupy >= 192 )powerupt = 0;

		// Player gets powerup?
		if( ( playertype == 3 ) || ( playertype == 5 ) )
		{
			if( ( playerx + 16 > powerupx ) && ( playerx < powerupx + 16 ) && ( playery + 16 > powerupy ) && ( playery < powerupy + 8 ) )
			{
				// Assign to player
				if( powerupt == 1 )playerspeed = DEFAULTPLAYERSPEED + 1;
				else if( powerupt == 2 )playershootlevel = 1;
				else playershootmax = MAXPLAYERSHOOTS;

				// Reset
				powerupt = 0;

				// Sound
				PlaySound( ( unsigned char * ) powerup_psg, 1 );
			}
		}
	}
}
