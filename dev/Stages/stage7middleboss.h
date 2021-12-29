#ifndef _STAGE7MIDDLEBOSS_H_
#define _STAGE7MIDDLEBOSS_H_

#include "../defines.h"

// Complete
void DoAracPatternMovement(enemy *en, const unsigned char *mx, const unsigned char *my, const unsigned int *mt);
void DrawAracMoving(enemy *en);
void UpdateStage7MiddleBoss0(enemy *en);
void UpdateStage7MiddleBoss1(enemy *en);
void UpdateStage7MiddleBoss2(enemy *en);
void FinishStage7MiddleBoss();
void InitStage7MiddleBoss(enemy *en);
unsigned char UpdateStage7MiddleBoss(enemy *en);

#endif //_STAGE7MIDDLEBOSS_H_
