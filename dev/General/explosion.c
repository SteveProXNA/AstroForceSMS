#include "explosion.h"
#include "../General/barrom.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank5.h"
#include "../defines.h"
#include "../funcs.h"
#include "../vars.h"

// Remove explosion
void RemoveExplosion( signed char a )
{
	explosion *exa, *exb;

	// Remove list of sprites
	if( a < numexplosions - 1 )
	{
		exa = &explosions[ a ];
		exb = &explosions[ numexplosions - 1 ];

		exa->explosionposx = exb->explosionposx;
		exa->explosionposy = exb->explosionposy;
		exa->explosionsprite = exb->explosionsprite;
		exa->explosiontype = exb->explosiontype;
	}
	// Bajamos el numero de explosions
	numexplosions--;
}

// Update explosion
void UpdateExplosion( unsigned int a )
{
	explosion *ex = &explosions[ a ];

	if( ex->explosiontype == 0 )
	{
		if( ex->explosionsprite >= 6 )
			RemoveExplosion( a );
		else
		{
			devkit_SMS_addSprite( ex->explosionposx, ex->explosionposy, ( ex->explosionsprite >> 1 ) + LITTLEEXPLOSIONBASE );
			ex->explosionsprite++;
		}
	}
	else
	{
		if( ex->explosionsprite >= 12 )
			RemoveExplosion( a );
		else
		{
			DrawQuadSprite( ex->explosionposx, ex->explosionposy, ( ( ex->explosionsprite >> 1 ) << 2 ) + BIGEXPLOSIONBASE );
			ex->explosionsprite++;
		}
	}
}

// Update all explosions
void UpdateExplosions()
{
	signed char a;

	// Each of the explosions
	if( numexplosions > 0 )
		for( a = numexplosions - 1; a >= 0; a-- )
		{
			UpdateExplosion( a );
		}

	// Spawn of explosions
	if( spawnedexplosiontime > 0 )
	{
		if( spawnedexplosiontime % 4 == 0 )
		{
			InitExplosion( spawnedexplosionposx + ( myRand() % spawnedexplosionwidth ), spawnedexplosionposy + ( myRand() % spawnedexplosionheight ), 1 );
			DoBarrom();
		}
		spawnedexplosiontime--;
	}
}

// Init explosion sprite
void InitExplosionSprite()
{
	// Explosion sprite
	LoadSprite( littleexplosion_psgcompr, LITTLEEXPLOSIONBASE, littleexplosion_psgcompr_bank );
	LoadSprite( bigexplosion_psgcompr, BIGEXPLOSIONBASE, bigexplosion_psgcompr_bank );
}

// Init all explosions
void InitExplosions()
{
	InitExplosionSprite();
	numexplosions = 0;
	spawnedexplosiontime = 0;
}


