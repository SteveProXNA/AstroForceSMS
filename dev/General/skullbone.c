#include "skullbone.h"
#include "../Enemies/enemy.h"
#include "../funcs.h"
#include "../vars.h"

void InitSkullBoneA( enemy *en )
{
	GetEnemyDirection( en );
	en->enemyparama <<= 1;
	en->enemyparamb <<= 1;
}

void InitSkullBoneB( enemy *en )
{
	en->enemyparama = ( myRand() % 7 ) - 3;
	en->enemyparamb = 4;
}

void InitSkullBoneC( enemy *en )
{
	en->enemyparamb = 8;
}


unsigned char UpdateSkullBoneAB( enemy *en )
{
	if( TestSkullOut( en ) )
		return 0;
	else
	{
		// Move
		en->enemyposx += en->enemyparama;
		en->enemyposy += en->enemyparamb;

		// Draw
		DrawQuadSprite( en->enemyposx, en->enemyposy, SKULLBONEBASE + ( ( ( en->enemyframe >> 1 ) % 4 ) << 2 ) );
	}
	return 1;
}

void UpdateSkullBoneCMovement( enemy *en )
{
	// ACCELERATION
	if( en->enemyframe % 2 == 0 )
	{
		SkullAccelX( en );
		SkullAccelY( en );
	}

	// Movement
	SkullBoneCMove( en );
}

unsigned char UpdateSkullBoneC( enemy *en )
{
	// Exit?
	if( TestSkullOut( en ) )return 0;

	// Movement
	UpdateSkullBoneCMovement( en );

	// Sprite
	DrawQuadSprite( en->enemyposx, en->enemyposy, SKULLBONEBASE + ( ( ( en->enemyframe >> 1 ) % 4 ) << 2 ) );

	// Exit
	return 1;
}
