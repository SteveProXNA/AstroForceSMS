;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module _sms_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _UNSAFE_SMS_VRAMmemcpy128
	.globl _UNSAFE_SMS_VRAMmemcpy64
	.globl _UNSAFE_SMS_VRAMmemcpy32
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_VRAMmemsetW
	.globl _SMS_VRAMmemset
	.globl _SMS_VRAMmemcpy_brief
	.globl _SMS_VRAMmemcpy
	.globl _SMS_setLineCounter
	.globl _SMS_setLineInterruptHandler
	.globl _SMS_resetPauseRequest
	.globl _SMS_queryPauseRequested
	.globl _SMS_getKeysReleased
	.globl _SMS_getKeysHeld
	.globl _SMS_getKeysPressed
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_setBGPaletteColor
	.globl _SMS_copySpritestoSAT
	.globl _SMS_finalizeSprites
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_loadSTMcompressedTileMapArea
	.globl _SMS_loadPSGaidencompressedTiles
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBackdropColor
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _devkit_SMS_init
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_setBGScrollX
	.globl _devkit_SMS_setBGScrollY
	.globl _devkit_SMS_setBackdropColor
	.globl _devkit_SMS_useFirstHalfTilesforSprites_False
	.globl _devkit_SMS_useFirstHalfTilesforSprites_True
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_loadTileMap
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_SMS_loadSTMcompressedTileMap
	.globl _devkit_SMS_setBGPaletteColor
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_addSprite
	.globl _devkit_SMS_initSprites
	.globl _devkit_SMS_finalizeSprites
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_copySpritestoSAT
	.globl _devkit_UNSAFE_SMS_copySpritestoSAT
	.globl _devkit_UNSAFE_SMS_VRAMmemcpy32
	.globl _devkit_UNSAFE_SMS_VRAMmemcpy64
	.globl _devkit_UNSAFE_SMS_VRAMmemcpy128
	.globl _devkit_SMS_queryPauseRequested
	.globl _devkit_SMS_resetPauseRequest
	.globl _devkit_SMS_getKeysStatus
	.globl _devkit_SMS_getKeysPressed
	.globl _devkit_SMS_getKeysHeld
	.globl _devkit_SMS_getKeysReleased
	.globl _devkit_PORT_A_KEY_UP
	.globl _devkit_PORT_A_KEY_DOWN
	.globl _devkit_PORT_A_KEY_LEFT
	.globl _devkit_PORT_A_KEY_RIGHT
	.globl _devkit_PORT_A_KEY_1
	.globl _devkit_PORT_A_KEY_2
	.globl _devkit_SMS_VRAMmemcpy
	.globl _devkit_SMS_VRAMmemcpy_brief
	.globl _devkit_SMS_VRAMmemset
	.globl _devkit_SMS_VRAMmemsetW
	.globl _devkit_SMS_setLineInterruptHandler
	.globl _devkit_SMS_setLineCounter
	.globl _devkit_SMS_enableLineInterrupt
	.globl _devkit_SMS_disableLineInterrupt
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
	.globl _devkit_VDPFEATURE_LEFTCOLBLANK
	.globl _devkit_SPRITEMODE_NORMAL
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;_sms_manager.c:11: void devkit_SMS_init()
;	---------------------------------
; Function devkit_SMS_init
; ---------------------------------
_devkit_SMS_init::
;_sms_manager.c:13: SMS_init();
	jp  _SMS_init
;_sms_manager.c:15: void devkit_SMS_displayOn()
;	---------------------------------
; Function devkit_SMS_displayOn
; ---------------------------------
_devkit_SMS_displayOn::
;_sms_manager.c:17: SMS_displayOn();
	ld	hl, #0x0140
	jp  _SMS_VDPturnOnFeature
;_sms_manager.c:19: void devkit_SMS_displayOff()
;	---------------------------------
; Function devkit_SMS_displayOff
; ---------------------------------
_devkit_SMS_displayOff::
;_sms_manager.c:21: SMS_displayOff();
	ld	hl, #0x0140
	jp  _SMS_VDPturnOffFeature
;_sms_manager.c:24: void devkit_SMS_setBGScrollX( unsigned char scrollX )
;	---------------------------------
; Function devkit_SMS_setBGScrollX
; ---------------------------------
_devkit_SMS_setBGScrollX::
;_sms_manager.c:26: SMS_setBGScrollX( scrollX );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setBGScrollX
;_sms_manager.c:28: void devkit_SMS_setBGScrollY( unsigned char scrollY )
;	---------------------------------
; Function devkit_SMS_setBGScrollY
; ---------------------------------
_devkit_SMS_setBGScrollY::
;_sms_manager.c:30: SMS_setBGScrollY( scrollY );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setBGScrollY
;_sms_manager.c:32: void devkit_SMS_setBackdropColor( unsigned char entry )
;	---------------------------------
; Function devkit_SMS_setBackdropColor
; ---------------------------------
_devkit_SMS_setBackdropColor::
;_sms_manager.c:34: SMS_setBackdropColor( entry );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setBackdropColor
;_sms_manager.c:36: void devkit_SMS_useFirstHalfTilesforSprites_False()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_False
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_False::
;_sms_manager.c:38: SMS_useFirstHalfTilesforSprites( false );
	ld	l, #0x00
	jp  _SMS_useFirstHalfTilesforSprites
;_sms_manager.c:40: void devkit_SMS_useFirstHalfTilesforSprites_True()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_True
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_True::
;_sms_manager.c:42: SMS_useFirstHalfTilesforSprites( true );
	ld	l, #0x01
	jp  _SMS_useFirstHalfTilesforSprites
;_sms_manager.c:44: void devkit_SMS_setSpriteMode( unsigned char mode )
;	---------------------------------
; Function devkit_SMS_setSpriteMode
; ---------------------------------
_devkit_SMS_setSpriteMode::
;_sms_manager.c:46: SMS_setSpriteMode( mode );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	jp  _SMS_setSpriteMode
;_sms_manager.c:49: void devkit_SMS_mapROMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_mapROMBank
; ---------------------------------
_devkit_SMS_mapROMBank::
;_sms_manager.c:51: SMS_mapROMBank( n );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	ld	(#_ROM_bank_to_be_mapped_on_slot2 + 0),a
	ret
;_sms_manager.c:53: void devkit_SMS_VDPturnOnFeature( unsigned int feature )
;	---------------------------------
; Function devkit_SMS_VDPturnOnFeature
; ---------------------------------
_devkit_SMS_VDPturnOnFeature::
;_sms_manager.c:55: SMS_VDPturnOnFeature( feature );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_VDPturnOnFeature
;_sms_manager.c:58: void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char* src, unsigned int size )
;	---------------------------------
; Function devkit_SMS_loadTileMap
; ---------------------------------
_devkit_SMS_loadTileMap::
	call	___sdcc_enter_ix
;_sms_manager.c:60: SMS_loadTileMap( x, y, src, size );
	ld	e,6 (ix)
	ld	d,7 (ix)
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, c
	or	a, l
	ld	c, a
	ld	a, b
	or	a, h
	ld	b, a
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	push	de
	push	bc
	call	_SMS_VRAMmemcpy
	pop	af
	pop	af
	pop	af
	pop	ix
	ret
;_sms_manager.c:63: void devkit_SMS_loadPSGaidencompressedTiles( void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_SMS_loadPSGaidencompressedTiles
; ---------------------------------
_devkit_SMS_loadPSGaidencompressedTiles::
;_sms_manager.c:65: SMS_loadPSGaidencompressedTiles( src, tilefrom );
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	ret
;_sms_manager.c:67: void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMap
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMap::
;_sms_manager.c:69: SMS_loadSTMcompressedTileMap( x, y, src );
	ld	a, #0x20
	push	af
	inc	sp
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_loadSTMcompressedTileMapArea
	pop	af
	pop	af
	inc	sp
	ret
;_sms_manager.c:72: void devkit_SMS_setBGPaletteColor( unsigned char entry, unsigned char color )
;	---------------------------------
; Function devkit_SMS_setBGPaletteColor
; ---------------------------------
_devkit_SMS_setBGPaletteColor::
;_sms_manager.c:74: SMS_setBGPaletteColor( entry, color );
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setBGPaletteColor
	pop	af
	ret
;_sms_manager.c:76: void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_SMS_setSpritePaletteColor
; ---------------------------------
_devkit_SMS_setSpritePaletteColor::
;_sms_manager.c:78: const unsigned char color = RGB( r, g, b );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	add	a, a
	add	a, a
	ld	hl, #3+0
	add	hl, sp
	or	a, (hl)
	ld	c, a
	ld	hl, #5+0
	add	hl, sp
	ld	a, (hl)
	rlca
	rlca
	rlca
	rlca
	and	a, #0xf0
	or	a, c
	ld	b, a
;_sms_manager.c:79: SMS_setSpritePaletteColor( entry, color );
	push	bc
	inc	sp
	ld	hl, #3+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
	ret
;_sms_manager.c:81: void devkit_SMS_loadBGPalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadBGPalette
; ---------------------------------
_devkit_SMS_loadBGPalette::
;_sms_manager.c:83: SMS_loadBGPalette( palette );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_loadBGPalette
;_sms_manager.c:85: void devkit_SMS_loadSpritePalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadSpritePalette
; ---------------------------------
_devkit_SMS_loadSpritePalette::
;_sms_manager.c:87: SMS_loadSpritePalette( palette );
	pop	bc
	pop	hl
	push	hl
	push	bc
	jp  _SMS_loadSpritePalette
;_sms_manager.c:90: void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y )
;	---------------------------------
; Function devkit_SMS_setNextTileatXY
; ---------------------------------
_devkit_SMS_setNextTileatXY::
	call	___sdcc_enter_ix
;_sms_manager.c:92: SMS_setNextTileatXY( x, y );
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	a, h
	or	a, #0x78
	ld	b, a
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	pop	ix
	jp	_SMS_crt0_RST08
;_sms_manager.c:94: void devkit_SMS_setTile( const unsigned char tile )
;	---------------------------------
; Function devkit_SMS_setTile
; ---------------------------------
_devkit_SMS_setTile::
;_sms_manager.c:96: SMS_setTile( tile );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, #0x00
	jp  _SMS_crt0_RST18
;_sms_manager.c:99: void devkit_SMS_addSprite( unsigned char x, unsigned char y, unsigned int tile )
;	---------------------------------
; Function devkit_SMS_addSprite
; ---------------------------------
_devkit_SMS_addSprite::
;_sms_manager.c:101: SMS_addSprite( x, y, tile );
	ld	hl, #4+0
	add	hl, sp
	ld	b, (hl)
	push	bc
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	ret
;_sms_manager.c:104: void devkit_SMS_initSprites()
;	---------------------------------
; Function devkit_SMS_initSprites
; ---------------------------------
_devkit_SMS_initSprites::
;_sms_manager.c:106: SMS_initSprites();
	jp  _SMS_initSprites
;_sms_manager.c:108: void devkit_SMS_finalizeSprites()
;	---------------------------------
; Function devkit_SMS_finalizeSprites
; ---------------------------------
_devkit_SMS_finalizeSprites::
;_sms_manager.c:110: SMS_finalizeSprites();
	jp  _SMS_finalizeSprites
;_sms_manager.c:112: void devkit_SMS_waitForVBlank()
;	---------------------------------
; Function devkit_SMS_waitForVBlank
; ---------------------------------
_devkit_SMS_waitForVBlank::
;_sms_manager.c:114: SMS_waitForVBlank();
	jp  _SMS_waitForVBlank
;_sms_manager.c:116: void devkit_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_SMS_copySpritestoSAT
; ---------------------------------
_devkit_SMS_copySpritestoSAT::
;_sms_manager.c:118: SMS_copySpritestoSAT();
	jp  _SMS_copySpritestoSAT
;_sms_manager.c:120: void devkit_UNSAFE_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_UNSAFE_SMS_copySpritestoSAT
; ---------------------------------
_devkit_UNSAFE_SMS_copySpritestoSAT::
;_sms_manager.c:122: UNSAFE_SMS_copySpritestoSAT();
	jp  _UNSAFE_SMS_copySpritestoSAT
;_sms_manager.c:124: void devkit_UNSAFE_SMS_VRAMmemcpy32( unsigned int dst, void *src )
;	---------------------------------
; Function devkit_UNSAFE_SMS_VRAMmemcpy32
; ---------------------------------
_devkit_UNSAFE_SMS_VRAMmemcpy32::
;_sms_manager.c:126: UNSAFE_SMS_VRAMmemcpy32( dst, src );
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_UNSAFE_SMS_VRAMmemcpy32
	pop	af
	pop	af
	ret
;_sms_manager.c:128: void devkit_UNSAFE_SMS_VRAMmemcpy64( unsigned int dst, void *src )
;	---------------------------------
; Function devkit_UNSAFE_SMS_VRAMmemcpy64
; ---------------------------------
_devkit_UNSAFE_SMS_VRAMmemcpy64::
;_sms_manager.c:130: UNSAFE_SMS_VRAMmemcpy64( dst, src );
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_UNSAFE_SMS_VRAMmemcpy64
	pop	af
	pop	af
	ret
;_sms_manager.c:132: void devkit_UNSAFE_SMS_VRAMmemcpy128( unsigned int dst, void *src )
;	---------------------------------
; Function devkit_UNSAFE_SMS_VRAMmemcpy128
; ---------------------------------
_devkit_UNSAFE_SMS_VRAMmemcpy128::
;_sms_manager.c:134: UNSAFE_SMS_VRAMmemcpy128( dst, src );
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_UNSAFE_SMS_VRAMmemcpy128
	pop	af
	pop	af
	ret
;_sms_manager.c:137: unsigned char devkit_SMS_queryPauseRequested()
;	---------------------------------
; Function devkit_SMS_queryPauseRequested
; ---------------------------------
_devkit_SMS_queryPauseRequested::
;_sms_manager.c:139: return SMS_queryPauseRequested();
	jp  _SMS_queryPauseRequested
;_sms_manager.c:141: void devkit_SMS_resetPauseRequest()
;	---------------------------------
; Function devkit_SMS_resetPauseRequest
; ---------------------------------
_devkit_SMS_resetPauseRequest::
;_sms_manager.c:143: SMS_resetPauseRequest();
	jp  _SMS_resetPauseRequest
;_sms_manager.c:147: unsigned int devkit_SMS_getKeysStatus()
;	---------------------------------
; Function devkit_SMS_getKeysStatus
; ---------------------------------
_devkit_SMS_getKeysStatus::
;_sms_manager.c:149: return SMS_getKeysStatus();
	jp  _SMS_getKeysStatus
;_sms_manager.c:151: unsigned int devkit_SMS_getKeysPressed()
;	---------------------------------
; Function devkit_SMS_getKeysPressed
; ---------------------------------
_devkit_SMS_getKeysPressed::
;_sms_manager.c:153: return SMS_getKeysPressed();
	jp  _SMS_getKeysPressed
;_sms_manager.c:155: unsigned int devkit_SMS_getKeysHeld()
;	---------------------------------
; Function devkit_SMS_getKeysHeld
; ---------------------------------
_devkit_SMS_getKeysHeld::
;_sms_manager.c:157: return SMS_getKeysHeld();
	jp  _SMS_getKeysHeld
;_sms_manager.c:159: unsigned int devkit_SMS_getKeysReleased()
;	---------------------------------
; Function devkit_SMS_getKeysReleased
; ---------------------------------
_devkit_SMS_getKeysReleased::
;_sms_manager.c:161: return SMS_getKeysReleased();
	jp  _SMS_getKeysReleased
;_sms_manager.c:164: unsigned int devkit_PORT_A_KEY_UP()
;	---------------------------------
; Function devkit_PORT_A_KEY_UP
; ---------------------------------
_devkit_PORT_A_KEY_UP::
;_sms_manager.c:166: return PORT_A_KEY_UP;
	ld	hl, #0x0001
	ret
;_sms_manager.c:168: unsigned int devkit_PORT_A_KEY_DOWN()
;	---------------------------------
; Function devkit_PORT_A_KEY_DOWN
; ---------------------------------
_devkit_PORT_A_KEY_DOWN::
;_sms_manager.c:170: return PORT_A_KEY_DOWN;
	ld	hl, #0x0002
	ret
;_sms_manager.c:172: unsigned int devkit_PORT_A_KEY_LEFT()
;	---------------------------------
; Function devkit_PORT_A_KEY_LEFT
; ---------------------------------
_devkit_PORT_A_KEY_LEFT::
;_sms_manager.c:174: return PORT_A_KEY_LEFT;
	ld	hl, #0x0004
	ret
;_sms_manager.c:176: unsigned int devkit_PORT_A_KEY_RIGHT()
;	---------------------------------
; Function devkit_PORT_A_KEY_RIGHT
; ---------------------------------
_devkit_PORT_A_KEY_RIGHT::
;_sms_manager.c:178: return PORT_A_KEY_RIGHT;
	ld	hl, #0x0008
	ret
;_sms_manager.c:180: unsigned int devkit_PORT_A_KEY_1()
;	---------------------------------
; Function devkit_PORT_A_KEY_1
; ---------------------------------
_devkit_PORT_A_KEY_1::
;_sms_manager.c:182: return PORT_A_KEY_1;
	ld	hl, #0x0010
	ret
;_sms_manager.c:184: unsigned int devkit_PORT_A_KEY_2()
;	---------------------------------
; Function devkit_PORT_A_KEY_2
; ---------------------------------
_devkit_PORT_A_KEY_2::
;_sms_manager.c:186: return PORT_A_KEY_2;
	ld	hl, #0x0020
	ret
;_sms_manager.c:190: void devkit_SMS_VRAMmemcpy( unsigned int dst, void *src, unsigned int size )
;	---------------------------------
; Function devkit_SMS_VRAMmemcpy
; ---------------------------------
_devkit_SMS_VRAMmemcpy::
;_sms_manager.c:192: SMS_VRAMmemcpy( dst, src, size );
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_VRAMmemcpy
	pop	af
	pop	af
	pop	af
	ret
;_sms_manager.c:194: void devkit_SMS_VRAMmemcpy_brief( unsigned int dst, void *src, unsigned char size )
;	---------------------------------
; Function devkit_SMS_VRAMmemcpy_brief
; ---------------------------------
_devkit_SMS_VRAMmemcpy_brief::
;_sms_manager.c:196: SMS_VRAMmemcpy_brief( dst, src, size );
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_VRAMmemcpy_brief
	pop	af
	pop	af
	inc	sp
	ret
;_sms_manager.c:198: void devkit_SMS_VRAMmemset( unsigned int dst, unsigned char value, unsigned int size )
;	---------------------------------
; Function devkit_SMS_VRAMmemset
; ---------------------------------
_devkit_SMS_VRAMmemset::
;_sms_manager.c:200: SMS_VRAMmemset( dst, value, size );
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #5
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_VRAMmemset
	pop	af
	pop	af
	inc	sp
	ret
;_sms_manager.c:202: void devkit_SMS_VRAMmemsetW( unsigned int dst, unsigned int value, unsigned int size )
;	---------------------------------
; Function devkit_SMS_VRAMmemsetW
; ---------------------------------
_devkit_SMS_VRAMmemsetW::
;_sms_manager.c:204: SMS_VRAMmemsetW( dst, value, size );
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_SMS_VRAMmemsetW
	pop	af
	pop	af
	pop	af
	ret
;_sms_manager.c:208: void devkit_SMS_setLineInterruptHandler( void( *theHandlerFunction )( void ) )
;	---------------------------------
; Function devkit_SMS_setLineInterruptHandler
; ---------------------------------
_devkit_SMS_setLineInterruptHandler::
;_sms_manager.c:210: SMS_setLineInterruptHandler( theHandlerFunction );
	pop	de
	pop	bc
	push	bc
	push	de
	push	bc
	call	_SMS_setLineInterruptHandler
	pop	af
	ret
;_sms_manager.c:212: void devkit_SMS_setLineCounter( unsigned char count )
;	---------------------------------
; Function devkit_SMS_setLineCounter
; ---------------------------------
_devkit_SMS_setLineCounter::
;_sms_manager.c:214: SMS_setLineCounter( count );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_setLineCounter
	inc	sp
	ret
;_sms_manager.c:216: void devkit_SMS_enableLineInterrupt()
;	---------------------------------
; Function devkit_SMS_enableLineInterrupt
; ---------------------------------
_devkit_SMS_enableLineInterrupt::
;_sms_manager.c:218: SMS_enableLineInterrupt();
	ld	hl, #0x0010
	jp  _SMS_VDPturnOnFeature
;_sms_manager.c:220: void devkit_SMS_disableLineInterrupt()
;	---------------------------------
; Function devkit_SMS_disableLineInterrupt
; ---------------------------------
_devkit_SMS_disableLineInterrupt::
;_sms_manager.c:222: SMS_disableLineInterrupt();
	ld	hl, #0x0010
	jp  _SMS_VDPturnOffFeature
;_sms_manager.c:226: unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL()
;	---------------------------------
; Function devkit_VDPFEATURE_HIDEFIRSTCOL
; ---------------------------------
_devkit_VDPFEATURE_HIDEFIRSTCOL::
;_sms_manager.c:228: return VDPFEATURE_HIDEFIRSTCOL;
	ld	hl, #0x0020
	ret
;_sms_manager.c:230: unsigned int devkit_VDPFEATURE_LEFTCOLBLANK()
;	---------------------------------
; Function devkit_VDPFEATURE_LEFTCOLBLANK
; ---------------------------------
_devkit_VDPFEATURE_LEFTCOLBLANK::
;_sms_manager.c:232: return VDPFEATURE_LEFTCOLBLANK;
	ld	hl, #0x0020
	ret
;_sms_manager.c:234: unsigned char devkit_SPRITEMODE_NORMAL()
;	---------------------------------
; Function devkit_SPRITEMODE_NORMAL
; ---------------------------------
_devkit_SPRITEMODE_NORMAL::
;_sms_manager.c:236: return SPRITEMODE_NORMAL;
	ld	l, #0x00
	ret
	.area _CODE
__str_0:
	.ascii "Steven Boland"
	.db 0x00
__str_1:
	.ascii "AstroForce"
	.db 0x00
__str_2:
	.ascii "Convert example as scalable SMS project"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.org 0x7FD2
___SMS__SDSC_author:
	.ascii "Steven Boland"
	.db 0x00
	.org 0x7FC7
___SMS__SDSC_name:
	.ascii "AstroForce"
	.db 0x00
	.org 0x7F9F
___SMS__SDSC_descr:
	.ascii "Convert example as scalable SMS project"
	.db 0x00
	.org 0x7FE0
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x05	; 5
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xd2	; 210
	.db #0x7f	; 127
	.db #0xc7	; 199
	.db #0x7f	; 127
	.db #0x9f	; 159
	.db #0x7f	; 127
