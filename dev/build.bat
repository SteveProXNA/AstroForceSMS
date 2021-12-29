::@echo off

:: Time build START
:: Reference: https://stackoverflow.com/questions/673523/how-do-i-measure-execution-time-of-a-command-on-the-windows-command-line
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _started=_hours*60*60*100+_min*60*100+_sec*100+_cs


:: Compile
cd banks
::sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK15 fixedbank.c
cd ..
cd devkit
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _sms_manager.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 _snd_manager.c
cd ..
cd Enemies
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enemy.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 enemyshoot.c
cd ..

cd Fortresses
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 fortresscannon.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 fortressdoor.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 fortressphantom.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 fortresssearcher.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 fortresswave.c
cd ..

cd General
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 barrom.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 bombship.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 explosion.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 finishstage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 gameoverstage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 jukeboxstage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 logostage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 map.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 mikgamesstage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 powerup.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 rectship.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 rsgthing.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 scripter.c
:::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 scroller.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 selectorstage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 skullbone.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 spreadship.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 timeredlabel.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 turnship.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 warning.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 waveship.c
cd ..

cd Intros
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 intro1stage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 intro2stage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 intro3object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 intro3stage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 intro4stage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 introovni.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 introsideplayer.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 introstage.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 introstar.c
cd ..

cd Monsters
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 monsterblob.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 monsterhead.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 monstermissil.c
cd ..

cd Players
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 player.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 playershoot.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 playstage.c
cd ..

cd Spaces
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 spaceasteroid.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 spaceshooter.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 spacestation.c
cd ..

cd Stages
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage1.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage1endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage1middleboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage1middlebossb.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage1middlebossc.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage2.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage2endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage2object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage3.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage3endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage3laser.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage3star.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage4.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage4endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage4endbossb.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage4middleboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage4object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage5.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage5endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage5missile.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage6.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage6endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage6endbossb.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage6object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage7.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage7endboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage7middleboss.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage7object.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage8.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage8bossa.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage8bossb.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage8bossc.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 stage8lateral.c
cd ..

cd Vulcans
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 vulcanbird.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 vulcanlaser.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 vulcanlava.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 vulcanstation.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 vulcantank.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 vulcanvulcan.c
cd ..

cd Wars
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 ww2plane.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 ww2planeb.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 ww2ship.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file ../peep-rules.txt --std-c99 ww2zeppelin.c
cd ..



:: echo Build main
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 defines.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 funcs.c
sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 main.c
::sdcc --debug -c -mz80 --opt-code-speed --peep-file peep-rules.txt --std-c99 vars.c


:: Time build -END-
set _time=%time: =0%
set /a _hours=100%_time:~0,2%%%100,_min=100%_time:~3,2%%%100,_sec=100%_time:~6,2%%%100,_cs=%_time:~9,2%
set /a _duration=_hours*60*60*100+_min*60*100+_sec*100+_cs-_started
set /a _hours=_duration/60/60/100,_min=100+_duration/60/100%%60,_sec=100+(_duration/100%%60%%60),_cs=100+_duration%%100
echo.
echo Time taken: %_sec:~-2%.%_cs:~-2% secs
echo.


:: Link
sdcc --debug -o output.ihx -mz80 --no-std-crt0 --data-loc 0xC000 ^
../crt0/crt0_sms.rel main.rel ^
-Wl-b_BANK2=0x8000  -Wl-b_BANK3=0x8000  -Wl-b_BANK4=0x8000  -Wl-b_BANK5=0x8000 ^
-Wl-b_BANK6=0x8000  -Wl-b_BANK7=0x8000  -Wl-b_BANK8=0x8000  -Wl-b_BANK9=0x8000 ^
-Wl-b_BANK10=0x8000 -Wl-b_BANK11=0x8000 -Wl-b_BANK12=0x8000 -Wl-b_BANK13=0x8000 ^
-Wl-b_BANK14=0x8000 -Wl-b_BANK15=0x8000 ^
../lib/SMSlib.lib ^
../lib/PSGlib.rel ^
banks/bank2.rel  banks/bank3.rel  banks/bank4.rel  banks/bank5.rel ^
banks/bank6.rel  banks/bank7.rel  banks/bank8.rel  banks/bank9.rel ^
banks/bank10.rel banks/bank11.rel banks/bank12.rel banks/bank13.rel ^
banks/bank14.rel banks/fixedbank.rel ^
devkit/_sms_manager.rel devkit/_snd_manager.rel ^
Enemies/enemy.rel ^
Enemies/enemyshoot.rel ^
Fortresses/fortresscannon.rel ^
Fortresses/fortressdoor.rel ^
Fortresses/fortressphantom.rel ^
Fortresses/fortresssearcher.rel ^
Fortresses/fortresswave.rel ^
General/barrom.rel ^
General/bombship.rel ^
General/explosion.rel ^
General/finishstage.rel ^
General/gameoverstage.rel ^
General/jukeboxstage.rel ^
General/logostage.rel ^
General/map.rel ^
General/mikgamesstage.rel ^
General/powerup.rel ^
General/rectship.rel ^
General/rsgthing.rel ^
General/scripter.rel ^
General/scroller.rel ^
General/selectorstage.rel ^
General/skullbone.rel ^
General/spreadship.rel ^
General/timeredlabel.rel ^
General/turnship.rel ^
General/warning.rel ^
General/waveship.rel ^
Intros/intro1stage.rel ^
Intros/intro2stage.rel ^
Intros/intro3object.rel ^
Intros/intro3stage.rel ^
Intros/intro4stage.rel ^
Intros/introovni.rel ^
Intros/introsideplayer.rel ^
Intros/introstage.rel ^
Intros/introstar.rel ^
Monsters/monsterblob.rel ^
Monsters/monsterhead.rel ^
Monsters/monstermissil.rel ^
Players/player.rel ^
Players/playershoot.rel ^
Players/playstage.rel ^
Spaces/spaceasteroid.rel ^
Spaces/spaceshooter.rel ^
Spaces/spacestation.rel ^
Stages/stage1.rel ^
Stages/stage1endboss.rel ^
Stages/stage1middleboss.rel ^
Stages/stage1middlebossb.rel ^
Stages/stage1middlebossc.rel ^
Stages/stage2.rel ^
Stages/stage2endboss.rel ^
Stages/stage2object.rel ^
Stages/stage3.rel ^
Stages/stage3endboss.rel ^
Stages/stage3laser.rel ^
Stages/stage3star.rel ^
Stages/stage4.rel ^
Stages/stage4endboss.rel ^
Stages/stage4endbossb.rel ^
Stages/stage4middleboss.rel ^
Stages/stage4object.rel ^
Stages/stage5.rel ^
Stages/stage5endboss.rel ^
Stages/stage5missile.rel ^
Stages/stage6.rel ^
Stages/stage6endboss.rel ^
Stages/stage6endbossb.rel ^
Stages/stage6object.rel ^
Stages/stage7.rel ^
Stages/stage7endboss.rel ^
Stages/stage7middleboss.rel ^
Stages/stage7object.rel ^
Stages/stage8.rel ^
Stages/stage8bossa.rel ^
Stages/stage8bossb.rel ^
Stages/stage8bossc.rel ^
Stages/stage8lateral.rel ^
Vulcans/vulcanbird.rel ^
Vulcans/vulcanlaser.rel ^
Vulcans/vulcanlava.rel ^
Vulcans/vulcanstation.rel ^
Vulcans/vulcantank.rel ^
Vulcans/vulcanvulcan.rel ^
Wars/ww2plane.rel ^
Wars/ww2planeb.rel ^
Wars/ww2ship.rel ^
Wars/ww2zeppelin.rel ^
defines.rel funcs.rel vars.rel


:: Execute
ihx2sms output.ihx output.sms


:: Output
::copy output.sms ../AstroForce2.0.sms


cd banks
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd devkit
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Enemies
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Fortresses
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd General
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Intros
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Monsters
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Players
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Spaces
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Stages
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Vulcans
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..
cd Wars
if exist "*.asm" del "*.asm" > nul; if exist "*.lst" del "*.lst" > nul; if exist "*.sym" del "*.sym" > nul
cd ..

if exist "*.ihx" del "*.ihx" > nul; if exist "*.lk"  del "*.lk"  > nul; if exist "*.asm" del "*.asm" > nul
if exist "*.noi" del "*.noi" > nul; if exist "*.sym" del "*.sym" > nul; if exist "*.lst" del "*.lst" > nul


:: Run
::java -jar C:/SEGA/Emulicious/Emulicious.jar output.sms
output.sms