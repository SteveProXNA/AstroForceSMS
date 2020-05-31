void InitIntro3Stage()
{
	// Warning sprite
	LoadSprite( ( unsigned char * ) warning_psgcompr, WARNINGBASE, warning_psgcompr_bank );

	// Load palette
	LoadBGPalette( ( unsigned char * ) personspalette_bin, personspalette_bin_bank );

	// Load tiles
	LoadTiles( ( unsigned char * ) persons_psgcompr, persons_psgcompr_bank );

	// Music
	PlayMusic( ( unsigned char * ) intro3_psg, intro3_psg_bank, 0 );

	// Scripter
	InitScript( ( unsigned char * ) intro3script, ( unsigned char ** ) intro3labels );
}