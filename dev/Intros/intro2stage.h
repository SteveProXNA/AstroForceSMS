void DoIntro2Scroll()
{
	// Scroll
	if( ( !stageframe2mod ) )
	{
		introstagevelx = stageframe >> 3;
		if( introstagevelx > 32 )introstagevelx = 32;
		introstageposx += introstagevelx;
		UpdateScroll( -introstageposx >> 2, -64 );
	}
}

void InitIntro2Stage()
{
	// Cargamos los graficos a la pantalla
	LoadGraphics( ( unsigned char* ) introstage2tiles_psgcompr, ( unsigned char* ) introstage2tilemap_bin, introstage2tilemap_bin_size, introstage2tiles_psgcompr_bank );

	// El sprite de la nave lateral
	LoadSprite( ( unsigned char* ) introsideplayer_psgcompr, INTROSIDEPLAYERBASE, introsideplayer_psgcompr_bank );

	// Rom bank
	PlayMusic( ( unsigned char* ) intro2_psg, intro2_psg_bank, 0 );

	// Scripter
	InitScript( ( unsigned char* ) intro2script, 0 );
}