void InitMikGamesStage()
{
	// General init
	InitStage();

	// Lo volvemos a apagar
	devkit_SMS_displayOff();

	// Load palette
	LoadBGPalette( ( unsigned char * ) logopalette_bin, logopalette_bin_bank );

	// Cargamos los graficos a la pantalla
	LoadGraphics( ( unsigned char * ) mikgamestiles_psgcompr, ( unsigned char * ) mikgamestilemap_bin, mikgamestilemap_bin_size, mikgamestiles_psgcompr_bank );

	// Scroll
	devkit_SMS_setBGScrollY( 16 );

	// Lo volvemos a encender
	devkit_SMS_displayOn();

	// Bucle
	while( 1 )
	{
		// Update stage
		UpdateStage();

		// Scroll
		if( stageframe < 30 )
			devkit_SMS_setBGScrollY( 16 + ( stageframe << 2 ) );

		// Play?
		if( keystatus&devkit_PORT_A_KEY_1() )
			return;

		// Done?
		if( stageframe > 120 )return;

		// Update psg
		UpdatePSG();
	}
}