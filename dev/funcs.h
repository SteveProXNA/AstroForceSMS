#ifndef _FUNCS_H_
#define _FUNCS_H_

#include "banks/fixedbank.h"

// Eah que no existen en la libreria
#define max(x, y) (((x) > (y)) ? (x) : (y))
#define min(x, y) (((x) < (y)) ? (x) : (y))
#define sign(x) (x > 0) ? 1 : ((x < 0) ? -1 : 0)
#define sinus(x) (sinustable[(x)%256]-128)


// Declarations needed
void InitEnemyshoot( unsigned char x, unsigned char y, unsigned char forced );
void InitEnemyshootLaser( unsigned char x, unsigned char y );
void InitEnemyshootDirection( unsigned char x, unsigned char y, signed char vx, signed char vy );
void RemovePlayershoot( signed char a );
void InitEnemy( unsigned char x, unsigned char y, unsigned char t );
void InitScript( unsigned char *scripter, unsigned char **labels );
void GetEnemyDirection( enemy *en );
void UpdatePlayStage();
void InitStageSprite( unsigned char b );
void InitStageSprites( const unsigned char *spl, unsigned char num );
void DoSkullSinusMovement( enemy *en, unsigned char dv, unsigned char offset );
unsigned char TestSkullOut( enemy *en );
void SkullAccelX( enemy *en );
void SkullAccelY( enemy *en );
void SkullBoneCMove( enemy *en );
void InitExplosion( unsigned char x, unsigned char y, unsigned char t );
void InitSpawnedExplosion( unsigned char x, unsigned char y, unsigned char w, unsigned char h );
void InitPowerup( enemy *en );
void RemoveEnemy( signed char a );
void KillEnemy( unsigned char a );
void KillEnemies( unsigned char force );
void DoCommonBossAppearingFunction( enemy *en );
void DoEnemyWait( enemy *en, unsigned char nxt );
void DoAracPatternMovement( enemy *en, const unsigned char *mx, const unsigned char *my, const unsigned int *mt );
void DoStage1BossDirectionShoots( enemy *en );
void DoSideShoot( enemy *en, unsigned char freq );
void PlaySound( char *sound, char priority );
void PlayMusic( char *music, unsigned char mbank, unsigned char looped );
void TestEnemyShoot( enemy *en, unsigned char freq );
void TestEnemyShootOne( enemy *en, unsigned char freq );
void TestEnemyShootComplex( enemy *en, unsigned char freq, unsigned char dx, unsigned char dy );
void InitPlayerConstants();
void SpreadEnemyshootDirection( unsigned char x, unsigned char y, const signed char *vx, const signed char *vy, unsigned char count );

// Fast random package
//unsigned long state = 777;
char myRand();

// Change bank
void changeBank( unsigned char b );

// Dibuja un array de sprites
void DrawSpriteArray( unsigned int s, unsigned char px, unsigned char py, unsigned char tx, unsigned char ty );

// Dibuja un sprite 16x16
void DrawQuadSprite( unsigned char x, unsigned char y, unsigned int b );

// Carga un sprite
void LoadSprite( const unsigned char *psg, unsigned int base, unsigned char b );

// Carga tiles
void LoadTiles( unsigned char *psg, char b );

// Carga graficos background
void LoadGraphics( char *psg, char *bin, int size, char b );

// Carga paleta de fondo
void LoadBGPalette( char *p, char b );

// Carga paleta por defecto
void LoadSpritePalette();

void InterruptHandler( void );

// Inicia la consola
void InitConsole();

// Clear background
void fillBackground();

// Limpia la pantalla
void ClearScreen();

// Update del scroll
void UpdateScroll( signed int sx, signed int sy );

// Dibujamos un texto
void WriteText( const unsigned char *text, unsigned char x, unsigned char y );

// Dibujamos un texto
void WriteNumber( unsigned int i, unsigned int d, unsigned char x, unsigned char y );

// Limpia las tiles
void ClearTiles();

// Carga la fuente
void LoadFont();

// Inicia una stage
void InitStage();

void checkgamepause();

// Update stage and frames
void UpdateStage();

// Update sound
void UpdatePSG();

//// Pause music system
//extern char *lastplayedmusic;
//extern unsigned char lastplayedmusicbank;
//extern unsigned char lastplayedmusiclooped;

// stevepro
//void initenemyAssert( enemy *en );
//unsigned char updateenemyAssert( enemy *en );
//void updatestageAssert();
//void initstageAssert();
//void killenemyAssert();
void updatestage6endbossAssert( enemy *en );	// stevepro
//void updatestage5endbossAssert( enemy *en );
//void updatestage3endbossAssert( enemy *en );
//void updatestage4middlebossAssert( enemy *en );
//void updatestage4endbossAssert( enemy *en );
//void playerupdateAssert();
//void updatestage7middlebossAssert( enemy *en );	// stevepro
//void updatespacestationAssert( enemy *en );
//void updatestage2endbossAssert( enemy *en );
//unsigned char checkcollisionAssert( unsigned char x, unsigned char y );

#endif//_FUNCS_H_