#include "_sms_manager.h"
#include "..\game.h"
#include <stdbool.h>

#ifdef _CONSOLE
#include "../../tmp/SMSlib.h"
#else
#include "../../lib/SMSlib.h"
#endif

void devkit_SMS_init()
{
	SMS_init();
}
void devkit_SMS_displayOn()
{
	SMS_displayOn();
}
void devkit_SMS_displayOff()
{
	SMS_displayOff();
}

void devkit_SMS_setBGScrollX( unsigned char scrollX )
{
	SMS_setBGScrollX( scrollX );
}
void devkit_SMS_setBGScrollY( unsigned char scrollY )
{
	SMS_setBGScrollY( scrollY );
}
void devkit_SMS_setBackdropColor( unsigned char entry )
{
	SMS_setBackdropColor( entry );
}
void devkit_SMS_useFirstHalfTilesforSprites_False()
{
	SMS_useFirstHalfTilesforSprites( false );
}
void devkit_SMS_useFirstHalfTilesforSprites_True()
{
	SMS_useFirstHalfTilesforSprites( true );
}
void devkit_SMS_setSpriteMode( unsigned char mode )
{
	SMS_setSpriteMode( mode );
}

void devkit_SMS_mapROMBank( unsigned char n )
{
	SMS_mapROMBank( n );
}
void devkit_SMS_VDPturnOnFeature( unsigned int feature )
{
	SMS_VDPturnOnFeature( feature );
}

void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char* src, unsigned int size )
{
	SMS_loadTileMap( x, y, src, size );
}

void devkit_SMS_loadPSGaidencompressedTiles( void *src, unsigned int tilefrom )
{
	SMS_loadPSGaidencompressedTiles( src, tilefrom );
}
void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src )
{
	SMS_loadSTMcompressedTileMap( x, y, src );
}

void devkit_SMS_setBGPaletteColor( unsigned char entry, unsigned char color )
{
	SMS_setBGPaletteColor( entry, color );
}
void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
{
	const unsigned char color = RGB( r, g, b );
	SMS_setSpritePaletteColor( entry, color );
}
void devkit_SMS_loadBGPalette( void *palette )
{
	SMS_loadBGPalette( palette );
}
void devkit_SMS_loadSpritePalette( void *palette )
{
	SMS_loadSpritePalette( palette );
}

void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y )
{
	SMS_setNextTileatXY( x, y );
}
void devkit_SMS_setTile( const unsigned char tile )
{
	SMS_setTile( tile );
}

void devkit_SMS_addSprite( unsigned char x, unsigned char y, unsigned int tile )
{
	SMS_addSprite( x, y, tile );
}

void devkit_SMS_initSprites()
{
	SMS_initSprites();
}
void devkit_SMS_finalizeSprites()
{
	SMS_finalizeSprites();
}
void devkit_SMS_waitForVBlank()
{
	SMS_waitForVBlank();
}
void devkit_SMS_copySpritestoSAT()
{
	SMS_copySpritestoSAT();
}
void devkit_UNSAFE_SMS_copySpritestoSAT()
{
	UNSAFE_SMS_copySpritestoSAT();
}
void devkit_UNSAFE_SMS_VRAMmemcpy32( unsigned int dst, void *src )
{
	UNSAFE_SMS_VRAMmemcpy32( dst, src );
}
void devkit_UNSAFE_SMS_VRAMmemcpy64( unsigned int dst, void *src )
{
	UNSAFE_SMS_VRAMmemcpy64( dst, src );
}
void devkit_UNSAFE_SMS_VRAMmemcpy128( unsigned int dst, void *src )
{
	UNSAFE_SMS_VRAMmemcpy128( dst, src );
}

unsigned char devkit_SMS_queryPauseRequested()
{
	return SMS_queryPauseRequested();
}
void devkit_SMS_resetPauseRequest()
{
	SMS_resetPauseRequest();
}

// Input.
unsigned int devkit_SMS_getKeysStatus()
{
	return SMS_getKeysStatus();
}
unsigned int devkit_SMS_getKeysPressed()
{
	return SMS_getKeysPressed();
}
unsigned int devkit_SMS_getKeysHeld()
{
	return SMS_getKeysHeld();
}
unsigned int devkit_SMS_getKeysReleased()
{
	return SMS_getKeysReleased();
}

unsigned int devkit_PORT_A_KEY_UP()
{
	return PORT_A_KEY_UP;
}
unsigned int devkit_PORT_A_KEY_DOWN()
{
	return PORT_A_KEY_DOWN;
}
unsigned int devkit_PORT_A_KEY_LEFT()
{
	return PORT_A_KEY_LEFT;
}
unsigned int devkit_PORT_A_KEY_RIGHT()
{
	return PORT_A_KEY_RIGHT;
}
unsigned int devkit_PORT_A_KEY_1()
{
	return PORT_A_KEY_1;
}
unsigned int devkit_PORT_A_KEY_2()
{
	return PORT_A_KEY_2;
}

/* low level functions */
void devkit_SMS_VRAMmemcpy( unsigned int dst, void *src, unsigned int size )
{
	SMS_VRAMmemcpy( dst, src, size );
}
void devkit_SMS_VRAMmemcpy_brief( unsigned int dst, void *src, unsigned char size )
{
	SMS_VRAMmemcpy_brief( dst, src, size );
}
void devkit_SMS_VRAMmemset( unsigned int dst, unsigned char value, unsigned int size )
{
	SMS_VRAMmemset( dst, value, size );
}
void devkit_SMS_VRAMmemsetW( unsigned int dst, unsigned int value, unsigned int size )
{
	SMS_VRAMmemsetW( dst, value, size );
}


void devkit_SMS_setLineInterruptHandler( void( *theHandlerFunction )( void ) )
{
	SMS_setLineInterruptHandler( theHandlerFunction );
}
void devkit_SMS_setLineCounter( unsigned char count )
{
	SMS_setLineCounter( count );
}
void devkit_SMS_enableLineInterrupt()
{
	SMS_enableLineInterrupt();
}
void devkit_SMS_disableLineInterrupt()
{
	SMS_disableLineInterrupt();
}

// #defines
unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL()
{
	return VDPFEATURE_HIDEFIRSTCOL;
}
unsigned int devkit_VDPFEATURE_LEFTCOLBLANK()
{
	return VDPFEATURE_LEFTCOLBLANK;
}
unsigned char devkit_SPRITEMODE_NORMAL()
{
	return SPRITEMODE_NORMAL;
}

// Sega header.
#ifdef _CONSOLE
#else
	SMS_EMBED_SEGA_ROM_HEADER( productCode, revision );
	SMS_EMBED_SDSC_HEADER( verMaj, verMin, dateYear, dateMonth, dateDay, author, name, descr );
#endif