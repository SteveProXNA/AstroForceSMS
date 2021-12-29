#ifndef _PLAYERSHOOT_H_
#define _PLAYERSHOOT_H_

#include "../vars.h"

// Complete
void DrawPlayerShoot(playershoot *ps);
void InitPlayershootSprites();
void UpdatePlayershoot(unsigned int a);
void UpdatePlayershoots();
void InitPlayershoot(unsigned char x, unsigned char y, unsigned char t);
void InitPlayershoots();

#endif //_PLAYERSHOOT_H_
