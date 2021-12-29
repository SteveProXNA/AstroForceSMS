#include "enemy.h"
#include "../General/explosion.h"
#include "../General/powerup.h"
#include "../banks/fixedbank.h"
#include "../funcs.h"
#include <stdlib.h>

// Check collision with playershoot
unsigned char checkEnemyPlayerShoot( enemy *en, playershoot *ps )
{
	if( ( en->enemyposy<ps->playershooty + 12 )
		&& ( en->enemyposy + en->enemyheight>ps->playershooty )
		&& ( en->enemyposx<ps->playershootx + 16 )
		&& ( en->enemyposx + en->enemywidth>ps->playershootx ) )
		return 1;
	return 0;
}

// Remove enemy



// Update enemy
void UpdateEnemy( unsigned char a )
{
	unsigned char erase;
	enemy *en;
	//playershoot *ps;

	// Security check
	if( a >= numenemies )
	{
		return;
	}

	// Get enemy
	en = &enemies[ a ];

	// By defect
	erase = 1;

	// Update
	if( updateenemyfunctions[ en->enemytype ] != 0 )
	{
		erase = ( *( updateenemyfunctions[ en->enemytype ] ) )( en );
	}

	// View if have to erase
	if( erase == 0 )
	{
		RemoveEnemy( a );
	}
	else
	{
		// Increase counter
		en->enemyframe++;

		/*
		// Collision with player shoot
		if(a%2==stageframe2mod)
		{
		if(numplayershoots>0)
		{
		for(signed char b=numplayershoots-1;b>=0;b--)
		{
		ps=&playershoots[b];
		if(checkEnemyPlayerShoot(en,ps)==1)
		{
		if(en->enemyenergy<=1+playershootlevel)
		KillEnemy(a);
		else
		{
		en->enemyenergy-=(1+playershootlevel);
		InitExplosion(ps->playershootx+4,ps->playershooty+4,0);
		}

		// Remove in all cases
		RemovePlayershoot(b);

		// No more collisions
		return;
		}
		}
		}
		}
		*/
	}
}

// Update all enemys
void UpdateEnemies()
{
	signed char q;

	// Need change here, by consensus
	changeBank( FIXEDBANKSLOT );

	// For each enemy
	if( numenemies>0 )
		for( q = numenemies - 1; q >= 0; q-- )
		{
			UpdateEnemy( q );
		}
}

// Create a enemy


// Init all enemys
void InitEnemies()
{
	numenemies = 0;
}

