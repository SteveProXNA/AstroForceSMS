#include "enemyshoot.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank7.h"
#include "../banks/fixedbank.h"
#include "../defines.h"
#include "../funcs.h"
#include <stdlib.h>

// Load player sprite
void InitEnemyshootSprites()
{
	LoadSprite( enemyshoot_psgcompr, ENEMYSHOOTBASE, enemyshoot_psgcompr_bank );
}

// Test collision
unsigned char CheckMapCollision( unsigned char x, unsigned char y )
{
	// Updates of stage
	if( stageframe2mod == 0 )
	{
		changeBank( FIXEDBANKSLOT );
		if( checkcollisionfunctions[ playstage ] != 0 )
			return ( *( checkcollisionfunctions[ playstage ] ) )( x, y );
	}
	return 0;
}

// Remove enemyshoot
void RemoveEnemyshoot( signed char a )
{
	enemyshoot *esa, *esb;

	// Remove list of sprites
	if( a < numenemyshoots - 1 )
	{
		esa = &enemyshoots[ a ];
		esb = &enemyshoots[ numenemyshoots - 1 ];

		esa->enemyshootposx = esb->enemyshootposx;
		esa->enemyshootposy = esb->enemyshootposy;
		esa->enemyshootvelx = esb->enemyshootvelx;
		esa->enemyshootvely = esb->enemyshootvely;
		esa->enemyshoottype = esb->enemyshoottype;
	}
	// Bajamos el numero de enemy shoots
	numenemyshoots--;
}

// Update Enemy shoot
void UpdateEnemyshoot( unsigned int a )
{
	enemyshoot *es = &enemyshoots[ a ];

	if( ( es->enemyshootposx < 8 ) || ( es->enemyshootposx > 247 ) || ( es->enemyshootposy < 8 ) || ( es->enemyshootposy > 183 ) )
	{
		RemoveEnemyshoot( a );
	}
	else
	{
		// Collision
		if( CheckMapCollision( es->enemyshootposx + 4, es->enemyshootposy + 4 ) )
		{
			RemoveEnemyshoot( a );
		}
		else
		{
			// Movement
			es->enemyshootposx += es->enemyshootvelx;
			es->enemyshootposy += es->enemyshootvely;

			// Draw 
			if( es->enemyshoottype == ENEMYSHOOT_NORMAL )
				devkit_SMS_addSprite( es->enemyshootposx, es->enemyshootposy, ENEMYSHOOTBASE + sprite82anim );
			else if( es->enemyshoottype == ENEMYSHOOT_LASER )
			{
				devkit_SMS_addSprite( es->enemyshootposx, es->enemyshootposy - 8, ENEMYSHOOTBASE + 2 );
				devkit_SMS_addSprite( es->enemyshootposx, es->enemyshootposy, ENEMYSHOOTBASE + 3 );
			}
		}
	}
}
// Update all Enemy shoots
void UpdateEnemyshoots()
{
	signed char a;
	// For each
	if( numenemyshoots > 0 )
		for( a = numenemyshoots - 1; a >= 0; a-- )
			UpdateEnemyshoot( a );
}

void InitEnemyshoots()
{
	InitEnemyshootSprites();
	numenemyshoots = 0;
}

void KillEnemyshoots()
{
	numenemyshoots = 0;
}
