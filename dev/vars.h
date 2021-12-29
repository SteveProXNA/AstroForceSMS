#ifndef _VARS_H_
#define _VARS_H_

#include "defines.h"

// Keyboard
extern unsigned int keystatus;  		// Estado del teclado

								// Frames in stage
extern unsigned int stageframe; 		// Guarda las frames en una stage

								// Speeding thins up
extern unsigned char stageframe2mod;
extern unsigned char stageframe4mod;
extern unsigned char sprite82anim;
extern unsigned char sprite164anim;

// Game vars
extern unsigned char basestage;					// Base stage para las 4 primeras fases
extern unsigned char playstage;					// Stage que se esta jugando en playstage
extern unsigned char updateplaystage;				// Si hay que hacer el update de la stage
extern unsigned char stagenum; 					// Numero de fase (del orden de la partida)
extern unsigned char laststagenum;					// Ultima stage, para el continue
extern unsigned char numplayers;					// Numero de players
extern unsigned char exitplaystage;				// Flag para salir de la stage
extern unsigned char gamelevel;					// Dificultad del juego
extern unsigned char gamestock;					// Número de jugadores por defecto
extern unsigned char gamepause;					// Si hay pausa

											// Player
#define DEFAULTPLAYERSPEED 2
#define ENEMYSHOOTDENSITY 4

extern unsigned char playerx;				// Posicion X del jugador
extern unsigned char playery;				// Posicion Y del jugador
extern unsigned char playertype;			// Estado del player
extern unsigned char playercounter;		// Contador util para timers
extern unsigned char playershootcounter; 	// Contador para shoots
extern unsigned char playerside;			// Side of player sprite
extern unsigned char playerspeed;			// Player speed
extern unsigned char playershootlevel; 	// Player shoot level
extern unsigned char playershootmax;		// Player shoot max

#define PLAYERSHOOT_SIDE_LEFT 0
#define PLAYERSHOOT_NORMAL 1
#define PLAYERSHOOT_SIDE_RIGHT 3

#define PLAYERSHOOTINTERVAL_NORMAL 3
#define PLAYERSHOOTINTERVAL_SIDE 6

#define MAXPLAYERSHOOTS 3				// stevepro		increase this
extern unsigned char numplayershoots;					// Disparos actuales
typedef struct playershoot
{
	unsigned char playershootx;
	unsigned char playershooty;
	unsigned char playershoottype;
	signed char playershootvelx;
	unsigned char playershootvely;
}playershoot;
extern playershoot playershoots[ MAXPLAYERSHOOTS ];

// Disparos de enemigos
#define ENEMYSHOOT_NORMAL 2
#define ENEMYSHOOT_LASER 3

#define MAXENEMYSHOOTS 10
extern unsigned char shootcount;						// Lleva la cuenta de disparos... sirve para diferenciar entre hard y easy
extern unsigned char numenemyshoots;					// Disparos actuales
typedef struct enemyshoot
{
	unsigned char enemyshootposx;
	unsigned char enemyshootposy;
	signed char enemyshootvelx;
	signed char enemyshootvely;
	unsigned char enemyshoottype;
}enemyshoot;
extern enemyshoot enemyshoots[ MAXENEMYSHOOTS ];
extern unsigned char playstageshootspeed;

// Explosiones
#define MAXEXPLOSIONS 10
extern unsigned char numexplosions;
typedef struct explosion
{
	unsigned char explosionposx;
	unsigned char explosionposy;
	unsigned char explosionsprite;
	unsigned char explosiontype;
}explosion;
extern explosion explosions[ MAXEXPLOSIONS ];

#define MAXENEMIES 10
extern unsigned char numenemies;
extern enemy enemies[ MAXENEMIES ];

// The tilemap
extern unsigned char *maplines;				// Lineas de un tilemap
extern unsigned int maplineslength;			// Numero de lineas de un tilemap
extern unsigned char *maptiles;				// Tiles de un tilemap, en lineas
extern unsigned int mappositionx;				// Posicion del map
extern signed int mappositiony;				// Posicion del map
extern signed int oldmappositiony;			// Antigua posicion del map

									// Bank changer
extern unsigned char lastbank;

// Map statics
const extern unsigned int *mapstatics;
extern unsigned int mapstaticscount;
extern unsigned char mapstaticsbank;

// Music
extern unsigned char musicbank;

// Map
extern unsigned char mapbank;

// Playstage
extern unsigned char playstagebank;

// Scroller
extern unsigned char numscrolls;
extern signed char scrollactspeedy;
extern signed char scrollactspeedx;
extern unsigned char scrollact;
extern unsigned int scrolltimes;
extern unsigned char disablescroll;

typedef struct scroll
{
	signed int scrolllock;
	signed int scrolltimes;
	signed int scrolljump;
	signed int scrollspeedx;
	signed int scrollspeedy;
}scroll;
extern scroll *scrolls;


// Scripter
#define MAXSCRIPTS 4
extern unsigned char numscripts;
typedef struct script
{
	unsigned int scripterpass;
	unsigned char *scripterscript;
	unsigned char **scripterlabels;
	unsigned char scripterframe;
	signed char scripterloop;
}script;
extern script scripts[ MAXSCRIPTS ];

// Labels
#define MAXTIMEREDLABELS 3
extern unsigned char numtimeredlabels;					// Labels actuales

typedef struct timeredlabel
{
	unsigned char timeredlabely;	// Posicion Y de una label
	unsigned char timeredlabelt;	// Tiempo final de una label
}timeredlabel;
extern timeredlabel timeredlabels[ MAXTIMEREDLABELS ];


// Usado en intro2 y ending
extern signed int introstageposx;
extern signed int introstagevelx;

// Enter jukebox?
extern unsigned char dojukebox;

// Spawned explosion
extern unsigned char spawnedexplosionposx;
extern unsigned char spawnedexplosionposy;
extern unsigned char spawnedexplosionwidth;
extern unsigned char spawnedexplosionheight;
extern unsigned char spawnedexplosiontime;

// Check if play rays in stage 4
extern unsigned char stage4playrays;

// Black magic
extern unsigned char numinterrupts;

// Powerup
extern unsigned char powerupx;
extern unsigned char powerupy;
extern unsigned char powerupt;
extern signed char powerupv;
extern unsigned int powerupcounter;

// Pause music system
extern char *lastplayedmusic;
extern unsigned char lastplayedmusicbank;
extern unsigned char lastplayedmusiclooped;

// Needed in stage 8
extern unsigned char stage8phase;

// Stage 3 star
#define MAXSTAGE3STARS 6
#define MAXSTAGE5CLOUDS 2

typedef struct stage3star
{
	unsigned char posx;
	unsigned char posy;
	unsigned char speed;
}stage3star;
extern stage3star stage3stars[ MAXSTAGE3STARS ];

#endif//_VARS_H_
