#ifndef _PLAYER_H_
#define _PLAYER_H_

// Complete
void RemovePlayer();
unsigned char CheckPlayerEnemyCollision();
unsigned char CheckPlayerEnemyshootCollision();
void UpdatePlayerIndicators();
void InitPlayer();
void InitPlayerSprite();
void DrawPlayer();
void MovePlayer();
void CheckShootPlayer();
void UpdatePlayerState6();
void UpdatePlayerState5();
void UpdatePlayerState4();
void UpdatePlayerState3();
void UpdatePlayerState2();
void UpdatePlayerState1();
void UpdatePlayer();

#endif //_PLAYER_H_
