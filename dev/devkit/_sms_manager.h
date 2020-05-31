#ifndef _SMS_MANAGER_H_
#define _SMS_MANAGER_H_

void devkit_SMS_init();
void devkit_SMS_displayOn();
void devkit_SMS_displayOff();

void devkit_SMS_setBGScrollX( unsigned char scrollX );
void devkit_SMS_setBGScrollY( unsigned char scrollY );
void devkit_SMS_setBackdropColor( unsigned char entry );
void devkit_SMS_useFirstHalfTilesforSprites_False();
void devkit_SMS_useFirstHalfTilesforSprites_True();
void devkit_SMS_setSpriteMode( unsigned char mode );

void devkit_SMS_mapROMBank( unsigned char n );
void devkit_SMS_VDPturnOnFeature( unsigned int feature );

void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char* src, unsigned int size );

void devkit_SMS_loadPSGaidencompressedTiles( const void *src, unsigned int tilefrom );
void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src );

void devkit_SMS_setBGPaletteColor(unsigned char entry, unsigned char color);
void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b );
void devkit_SMS_loadBGPalette( void *palette );
void devkit_SMS_loadSpritePalette( void *palette );

void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y );
void devkit_SMS_setTile( const unsigned char tile );

void devkit_SMS_addSprite( unsigned char x, unsigned char y, unsigned int tile );

void devkit_SMS_initSprites();
void devkit_SMS_finalizeSprites();
void devkit_SMS_waitForVBlank();
void devkit_SMS_copySpritestoSAT();
void devkit_UNSAFE_SMS_copySpritestoSAT();
void devkit_UNSAFE_SMS_VRAMmemcpy32( unsigned int dst, void *src );
void devkit_UNSAFE_SMS_VRAMmemcpy64( unsigned int dst, void *src );
void devkit_UNSAFE_SMS_VRAMmemcpy128( unsigned int dst, void *src );

unsigned char devkit_SMS_queryPauseRequested();
void devkit_SMS_resetPauseRequest();

// Input
unsigned int devkit_SMS_getKeysStatus();
unsigned int devkit_SMS_getKeysPressed();
unsigned int devkit_SMS_getKeysHeld();
unsigned int devkit_SMS_getKeysReleased();

unsigned int devkit_PORT_A_KEY_UP();
unsigned int devkit_PORT_A_KEY_DOWN();
unsigned int devkit_PORT_A_KEY_LEFT();
unsigned int devkit_PORT_A_KEY_RIGHT();
unsigned int devkit_PORT_A_KEY_1();
unsigned int devkit_PORT_A_KEY_2();

/* low level functions */
void devkit_SMS_VRAMmemcpy( unsigned int dst, void *src, unsigned int size );
void devkit_SMS_VRAMmemcpy_brief( unsigned int dst, void *src, unsigned char size );
void devkit_SMS_VRAMmemset( unsigned int dst, unsigned char value, unsigned int size );
void devkit_SMS_VRAMmemsetW( unsigned int dst, unsigned int value, unsigned int size );

/* line interrupt */
void devkit_SMS_setLineInterruptHandler( void( *theHandlerFunction )( void ) );
void devkit_SMS_setLineCounter( unsigned char count );
void devkit_SMS_enableLineInterrupt();
void devkit_SMS_disableLineInterrupt();

// #defines
unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL();
unsigned int devkit_VDPFEATURE_LEFTCOLBLANK();
unsigned char devkit_SPRITEMODE_NORMAL();

#endif//_SMS_MANAGER_H_