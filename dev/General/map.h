#ifndef _MAP_H_
#define _MAP_H_

// ADRIANA
unsigned char getTileAt( unsigned char x, unsigned char y );
void SetMapLines( unsigned char *lines, unsigned int lsize, unsigned char *tiles );
void SetStaticEnemies( unsigned int *p, unsigned char b );
void DrawMap();
void InitMap( unsigned char mb );
void MoveMap( signed int mvx, signed int mvy );

#endif//_MAP_H_
