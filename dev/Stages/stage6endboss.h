#ifndef _STAGE6ENDBOSS_H_
#define _STAGE6ENDBOSS_H_

#include "../defines.h"

// Complete
void FinishStage6EndBoss();
void ResetSkullState(enemy *en, unsigned int st, unsigned char rec);
void CreateCustomBoneC(unsigned char x, unsigned char y, unsigned char vx, unsigned char vy);
void LaunchSkullBoneC(enemy *en, unsigned char vy);
void DoSkullShootDirection(enemy *en);
void DoSkullShootDirectionB(enemy *en);
// void UpdateStage6EndBoss0( enemy *en );
// void UpdateStage6EndBoss1( enemy *en );
// void UpdateStage6EndBoss2( enemy *en );
// void UpdateStage6EndBoss3( enemy *en );
// void UpdateStage6EndBoss3A( enemy *en );
// void UpdateStage6EndBoss4( enemy *en );
// void UpdateStage6EndBoss5( enemy *en );
unsigned char UpdateStage6EndBoss(enemy *en);

#endif //_STAGE6ENDBOSS_H_
