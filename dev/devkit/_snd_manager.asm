;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module _snd_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGRestoreVolumes
	.globl _PSGSilenceChannels
	.globl _PSGSFXGetStatus
	.globl _PSGSFXStop
	.globl _PSGSFXCancelLoop
	.globl _PSGSFXPlayLoop
	.globl _PSGSFXPlay
	.globl _PSGSetMusicVolumeAttenuation
	.globl _PSGGetStatus
	.globl _PSGResume
	.globl _PSGStop
	.globl _PSGPlayNoRepeat
	.globl _PSGCancelLoop
	.globl _PSGPlay
	.globl _devkit_PSGPlay
	.globl _devkit_PSGCancelLoop
	.globl _devkit_PSGPlayNoRepeat
	.globl _devkit_PSGStop
	.globl _devkit_PSGResume
	.globl _devkit_PSGGetStatus
	.globl _devkit_PSGSetMusicVolumeAttenuation
	.globl _devkit_PSGSFXPlay
	.globl _devkit_PSGSFXPlayLoop
	.globl _devkit_PSGSFXCancelLoop
	.globl _devkit_PSGSFXStop
	.globl _devkit_PSGSFXGetStatus
	.globl _devkit_PSGSilenceChannels
	.globl _devkit_PSGRestoreVolumes
	.globl _devkit_PSGFrame
	.globl _devkit_PSGSFXFrame
	.globl _devkit_SFX_CHANNEL2
	.globl _devkit_SFX_CHANNEL3
	.globl _devkit_SFX_CHANNELS2AND3
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
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
;_snd_manager.c:9: void devkit_PSGPlay( void *song )
;	---------------------------------
; Function devkit_PSGPlay
; ---------------------------------
_devkit_PSGPlay::
;_snd_manager.c:11: PSGPlay( song );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlay
	pop	af
	ret
;_snd_manager.c:13: void devkit_PSGCancelLoop( void )
;	---------------------------------
; Function devkit_PSGCancelLoop
; ---------------------------------
_devkit_PSGCancelLoop::
;_snd_manager.c:15: PSGCancelLoop();
	jp  _PSGCancelLoop
;_snd_manager.c:17: void devkit_PSGPlayNoRepeat( void *song )
;	---------------------------------
; Function devkit_PSGPlayNoRepeat
; ---------------------------------
_devkit_PSGPlayNoRepeat::
;_snd_manager.c:19: PSGPlayNoRepeat( song );
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlayNoRepeat
	pop	af
	ret
;_snd_manager.c:21: void devkit_PSGStop( void )
;	---------------------------------
; Function devkit_PSGStop
; ---------------------------------
_devkit_PSGStop::
;_snd_manager.c:23: PSGStop();
	jp  _PSGStop
;_snd_manager.c:25: void devkit_PSGResume( void )
;	---------------------------------
; Function devkit_PSGResume
; ---------------------------------
_devkit_PSGResume::
;_snd_manager.c:27: PSGResume();
	jp  _PSGResume
;_snd_manager.c:29: unsigned char devkit_PSGGetStatus( void )
;	---------------------------------
; Function devkit_PSGGetStatus
; ---------------------------------
_devkit_PSGGetStatus::
;_snd_manager.c:31: return PSGGetStatus();
	jp  _PSGGetStatus
;_snd_manager.c:33: void devkit_PSGSetMusicVolumeAttenuation( unsigned char attenuation )
;	---------------------------------
; Function devkit_PSGSetMusicVolumeAttenuation
; ---------------------------------
_devkit_PSGSetMusicVolumeAttenuation::
;_snd_manager.c:35: PSGSetMusicVolumeAttenuation( attenuation );
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_PSGSetMusicVolumeAttenuation
	inc	sp
	ret
;_snd_manager.c:38: void devkit_PSGSFXPlay( void *sfx, unsigned char channels )
;	---------------------------------
; Function devkit_PSGSFXPlay
; ---------------------------------
_devkit_PSGSFXPlay::
;_snd_manager.c:40: PSGSFXPlay( sfx, channels );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_PSGSFXPlay
	pop	af
	inc	sp
	ret
;_snd_manager.c:42: void devkit_PSGSFXPlayLoop( void *sfx, unsigned char channels )
;	---------------------------------
; Function devkit_PSGSFXPlayLoop
; ---------------------------------
_devkit_PSGSFXPlayLoop::
;_snd_manager.c:44: PSGSFXPlayLoop( sfx, channels );
	ld	hl, #4+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, #3
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_PSGSFXPlayLoop
	pop	af
	inc	sp
	ret
;_snd_manager.c:46: void devkit_PSGSFXCancelLoop( void )
;	---------------------------------
; Function devkit_PSGSFXCancelLoop
; ---------------------------------
_devkit_PSGSFXCancelLoop::
;_snd_manager.c:48: PSGSFXCancelLoop();
	jp  _PSGSFXCancelLoop
;_snd_manager.c:50: void devkit_PSGSFXStop( void )
;	---------------------------------
; Function devkit_PSGSFXStop
; ---------------------------------
_devkit_PSGSFXStop::
;_snd_manager.c:52: PSGSFXStop();
	jp  _PSGSFXStop
;_snd_manager.c:54: unsigned char devkit_PSGSFXGetStatus( void )
;	---------------------------------
; Function devkit_PSGSFXGetStatus
; ---------------------------------
_devkit_PSGSFXGetStatus::
;_snd_manager.c:56: return PSGSFXGetStatus();
	jp  _PSGSFXGetStatus
;_snd_manager.c:59: void devkit_PSGSilenceChannels( void )
;	---------------------------------
; Function devkit_PSGSilenceChannels
; ---------------------------------
_devkit_PSGSilenceChannels::
;_snd_manager.c:61: PSGSilenceChannels();
	jp  _PSGSilenceChannels
;_snd_manager.c:63: void devkit_PSGRestoreVolumes( void )
;	---------------------------------
; Function devkit_PSGRestoreVolumes
; ---------------------------------
_devkit_PSGRestoreVolumes::
;_snd_manager.c:65: PSGRestoreVolumes();
	jp  _PSGRestoreVolumes
;_snd_manager.c:68: void devkit_PSGFrame( void )
;	---------------------------------
; Function devkit_PSGFrame
; ---------------------------------
_devkit_PSGFrame::
;_snd_manager.c:70: PSGFrame();
	jp  _PSGFrame
;_snd_manager.c:72: void devkit_PSGSFXFrame( void )
;	---------------------------------
; Function devkit_PSGSFXFrame
; ---------------------------------
_devkit_PSGSFXFrame::
;_snd_manager.c:74: PSGSFXFrame();
	jp  _PSGSFXFrame
;_snd_manager.c:78: unsigned char devkit_SFX_CHANNEL2()
;	---------------------------------
; Function devkit_SFX_CHANNEL2
; ---------------------------------
_devkit_SFX_CHANNEL2::
;_snd_manager.c:80: return SFX_CHANNEL2;
	ld	l, #0x01
	ret
;_snd_manager.c:82: unsigned char devkit_SFX_CHANNEL3()
;	---------------------------------
; Function devkit_SFX_CHANNEL3
; ---------------------------------
_devkit_SFX_CHANNEL3::
;_snd_manager.c:84: return SFX_CHANNEL3;
	ld	l, #0x02
	ret
;_snd_manager.c:86: unsigned char devkit_SFX_CHANNELS2AND3()
;	---------------------------------
; Function devkit_SFX_CHANNELS2AND3
; ---------------------------------
_devkit_SFX_CHANNELS2AND3::
;_snd_manager.c:88: return SFX_CHANNELS2AND3;
	ld	l, #0x03
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
