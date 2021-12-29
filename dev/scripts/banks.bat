@echo off
cls

cd ..

REM Banks conversion
cd Banks
folder2c bank2 bank2 2
folder2c bank3 bank3 3
folder2c bank4 bank4 4
folder2c bank5 bank5 5
folder2c bank6 bank6 6
folder2c bank7 bank7 7
folder2c bank8 bank8 8
folder2c bank9 bank9 9
folder2c bank10 bank10 10
folder2c bank11 bank11 11
folder2c bank12 bank12 12
folder2c bank13 bank13 13
folder2c bank14 bank14 14
::folder2c bank15 bank15 15

REM Compile banks
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK2 bank2.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK3 bank3.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK4 bank4.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK5 bank5.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK6 bank6.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK7 bank7.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK8 bank8.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK9 bank9.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK10 bank10.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK11 bank11.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK12 bank12.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK13 bank13.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK14 bank14.c
sdcc --debug -c --no-std-crt0 -mz80 --Werror --opt-code-speed --constseg BANK15 fixedbank.c


del *.asm > nul; del *.lst > nul; del *.sym > nul
cd ..
cd scripts