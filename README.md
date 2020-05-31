
# Astro Force SMS
Refactor of Astro Force for Sega Master System using devkitSMS
<br />
Original source code can be found here:
<br />
https://github.com/kusfo/astroforce


Original refactor uses Visual Studio 2008 as Integrated Development Environment
<br />
More detailed information on code refactor and setup can be found here:
<br />
http://steveproxna.blogspot.com/2017/09/devkitsms-programming-setup.html


Updated refactor uses Visual Studio 2015 as Integrated Development Environment
<br />
More detailed information on code refactor and setup can be found here:
<br />
http://steveproxna.blogspot.com/2019/04/devkitsms-programming-sample-iii.html



INSTRUCTIONS
<br />
Launch Visual Studio 2015
<br />
Navigate to dev folder
<br />
Double click Game.sln
<br />
Press Ctrl+Shift+B to build solution
<br />
Press F5 to debug step thru C source code
<br />
Finally, assuming you configured Visual Studio as above, press Ctrl+1 to run Astro Force in emulator!
<br />


build.bat
<br />
Assumes the following utilities are added to Environment PATH
* bintolm
* bmp2tile
* folder2c
* ihx2sms
* psgcomp
* smsexamine
* vgm2psg
