#ifndef _ENEMYSHOOT_H_
#define _ENEMYSHOOT_H_

#include "../vars.h"

// Complete
void InitEnemyshootSprites();
unsigned char CheckMapCollision(unsigned char x, unsigned char y);
void RemoveEnemyshoot(signed char a);
void UpdateEnemyshoot(unsigned int a);
void UpdateEnemyshoots();
void InitEnemyshoots();
void KillEnemyshoots();

#endif //_ENEMYSHOOT_H_
