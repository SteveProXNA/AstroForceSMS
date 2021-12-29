#ifndef _ENEMY_H_
#define _ENEMY_H_

#include "../vars.h"

// ADRIANA
unsigned char checkEnemyPlayerShoot( enemy *en, playershoot *ps );
void GetEnemyDirection( enemy *en );
void UpdateEnemy( unsigned char a );
void UpdateEnemies();
void InitEnemy( unsigned char x, unsigned char y, unsigned char t );
void InitEnemies();

#endif//_ENEMY_H_
