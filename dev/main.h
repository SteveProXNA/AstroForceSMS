#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "devkit\_sms_manager.h"
#include "devkit\_snd_manager.h"

// LIBRARIES.
#include "defines.h"					// DONE
#include "Banks\fixedbank.h"			// DONE
#include "vars.h"						// DONE
#include "funcs.h"						// DONE
#include "General\timeredlabel.h"		// DONE
#include "General\map.h"				// DONE
#include "General\scroller.h"			// DONE
#include "General\barrom.h"				// DONE
#include "General\explosion.h"			// DONE
#include "General\warning.h"			// DONE
#include "Intros\introovni.h"			// DONE
#include "Intros\introsideplayer.h"		// DONE
#include "Intros\introstar.h"			// DONE
#include "Intros\intro3object.h"		// DONE
#include "General\waveship.h"			// DONE
#include "General\rectship.h"			// DONE
#include "General\bombship.h"			// DONE
#include "General\spreadship.h"			// DONE
#include "Stages\stage4middleboss.h"	// DONE
#include "Stages\stage4endboss.h"		// DONE
#include "Stages\stage4endbossb.h"		// DONE
#include "Stages\stage4object.h"		// DONE
#include "Stages\stage2object.h"		// DONE
#include "Wars\ww2plane.h"				// DONE
#include "Wars\ww2planeb.h"				// DONE
#include "Wars\ww2zeppelin.h"			// DONE
#include "Wars\ww2ship.h"				// DONE
#include "Stages\stage5missile.h"		// DONE
#include "Stages\stage5endboss.h"		// DONE
#include "Fortresses\fortressphantom.h"	// DONE
#include "Fortresses\fortresssearcher.h"// DONE
#include "Fortresses\fortresswave.h"	// DONE
#include "Fortresses\fortresscannon.h"	// DONE
#include "Fortresses\fortressdoor.h"	// DONE
#include "Stages\stage1middlebossc.h"	// DONE
#include "Stages\stage1middlebossb.h"	// DONE
#include "Stages\stage1middleboss.h"	// DONE
#include "Stages\stage1endboss.h"		// DONE
#include "Monsters\monsterblob.h"		// DONE
#include "Monsters\monstermissil.h"		// DONE
#include "Monsters\monsterhead.h"		// DONE
#include "Vulcans\vulcanstation.h"		// DONE
#include "Vulcans\vulcantank.h"			// DONE
#include "Vulcans\vulcanvulcan.h"		// DONE
#include "Vulcans\vulcanlava.h"			// DONE
#include "Vulcans\vulcanbird.h"			// DONE
#include "Vulcans\vulcanlaser.h"		// DONE
#include "Stages\stage2endboss.h"		// DONE
#include "Spaces\spacestation.h"		// DONE
#include "Spaces\spaceasteroid.h"		// DONE
#include "Spaces\spaceshooter.h"		// DONE
#include "Stages\stage3laser.h"			// DONE
#include "Stages\stage3endboss.h"		// DONE
#include "Stages\stage3star.h"			// DONE
#include "Stages\stage6endboss.h"		// DONE
#include "Stages\stage6endbossb.h"		// DONE
#include "Stages\stage6object.h"		// DONE
#include "General\skullbone.h"			// DONE
#include "General\turnship.h"			// DONE
#include "Stages\stage8lateral.h"		// DONE
#include "Stages\stage8bossa.h"			// DONE
#include "Stages\stage8bossb.h"			// DONE
#include "Stages\stage8bossc.h"			// DONE
#include "General\rsgthing.h"			// DONE
#include "Enemies\enemy.h"				// DONE
#include "General\scripter.h"			// DONE
#include "General\mikgamesstage.h"		// DONE
#include "General\logostage.h"			// DONE
#include "General\jukeboxstage.h"		// DONE
#include "Intros\intro1stage.h"			// DONE
#include "Intros\intro2stage.h"			// DONE
#include "Intros\intro3stage.h"			// DONE
#include "Intros\intro4stage.h"			// DONE
#include "General\finishstage.h"		// DONE
#include "Intros\introstage.h"			// DONE
#include "General\selectorstage.h"		// DONE
#include "General\gameoverstage.h"		// DONE
#include "Stages\stage1.h"				// DONE
#include "Stages\stage2.h"				// DONE
#include "Stages\stage3.h"				// DONE
#include "Stages\stage4.h"				// DONE
#include "Stages\stage5.h"				// DONE
#include "Stages\stage6.h"				// DONE
#include "Stages\stage7middleboss.h"	// DONE
#include "Stages\stage7.h"				// DONE
#include "Stages\stage7endboss.h"		// DONE
#include "Stages\stage7object.h"		// DONE
#include "Stages\stage8.h"				// DONE
#include "Enemies\enemyshoot.h"			// DONE
#include "Players\playershoot.h"		// DONE
#include "General\powerup.h"			// DONE
#include "Players\player.h"				// DONE
#include "Players\playstage.h"			// DONE


// FOLDERS complete
// Enemies
// Fortresses
// General
// Intros
// Monsters
// Players
// Spaces
// Stages
// Vulcans
// Wars