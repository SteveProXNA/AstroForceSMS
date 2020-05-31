void InitIntro1Stage()
{
	// Cargamos los graficos a la pantalla
	LoadGraphics( ( unsigned char * ) introstage1tiles_psgcompr, ( unsigned char * ) introstage1tilemap_bin, introstage1tilemap_bin_size, introstage1tiles_psgcompr_bank );

	// El sprite de los ovnis
	LoadSprite( ( unsigned char * ) introovni_psgcompr, INTROOVNIBASE, introovni_psgcompr_bank );

	// Rom bank
	PlayMusic( ( unsigned char * ) intro1_psg, intro1_psg_bank, 0 );

	// Scripter
	InitScript( ( unsigned char * ) intro1script, ( unsigned char ** ) intro1labels );
}