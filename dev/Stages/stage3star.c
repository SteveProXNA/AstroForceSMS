#include "stage3star.h"
#include "../devkit/_sms_manager.h"
#include "../defines.h"
#include "../funcs.h"

void InitStage3Star( stage3star *st, unsigned char speed )
{
	st->posx = 48 + ( myRand() % ( 255 - 48 - 48 - 16 ) );
	st->posy = myRand() % 192;
	st->speed = speed;
}

void UpdateStarMovement( stage3star *st )
{
	st->posy += st->speed;
	if( st->posy == 191 )
		st->posx = 48 + ( myRand() % ( 255 - 48 - 48 - 16 ) );
}

void UpdateStage3Star( stage3star *st )
{
	devkit_SMS_addSprite( st->posx, st->posy, ( int ) ( STAGE3STARBASE ) );
	UpdateStarMovement( st );
}

void UpdateStage5Cloud( stage3star *st )
{
	DrawSpriteArray( STAGE5CLOUDBASE, st->posx - 16, st->posy, 32, 8 );
	UpdateStarMovement( st );
}
