#ifndef _SKULLBONE_H_
#define _SKULLBONE_H_

#include "../defines.h"

// Complete
void InitSkullBoneA(enemy *en);
void InitSkullBoneB(enemy *en);
void InitSkullBoneC(enemy *en);
unsigned char TestSkullOut(enemy *en);
unsigned char UpdateSkullBoneAB(enemy *en);
void UpdateSkullBoneCMovement(enemy *en);
unsigned char UpdateSkullBoneC(enemy *en);

#endif //_SKULLBONE_H_
