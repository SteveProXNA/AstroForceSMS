M:funcs
F:G$InitEnemyshoot$0$0({2}DF,SV:S),Z,0,2,0,0,0
S:Lfuncs.InitEnemyshoot$x$1$110({1}SC:U),B,1,4
S:Lfuncs.InitEnemyshoot$y$1$110({1}SC:U),B,1,5
S:Lfuncs.InitEnemyshoot$forced$1$110({1}SC:U),B,1,6
S:Lfuncs.InitEnemyshoot$dx$1$111({2}SI:S),R,0,0,[c,b]
S:Lfuncs.InitEnemyshoot$dy$1$111({2}SI:S),R,0,0,[l,h]
S:Lfuncs.InitEnemyshoot$dm$1$111({2}SI:S),R,0,0,[e,d]
S:Lfuncs.InitEnemyshoot$es$1$111({2}DG,STenemyshoot:S),B,1,-4
S:Lfuncs.InitEnemyshoot$sloc0$1$0({2}SI:S),B,1,-2
F:G$InitEnemyshootLaser$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitEnemyshootLaser$x$1$115({1}SC:U),B,1,4
S:Lfuncs.InitEnemyshootLaser$y$1$115({1}SC:U),B,1,5
S:Lfuncs.InitEnemyshootLaser$es$1$116({2}DG,STenemyshoot:S),R,0,0,[c,b]
F:G$InitEnemyshootDirection$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitEnemyshootDirection$x$1$118({1}SC:U),B,1,4
S:Lfuncs.InitEnemyshootDirection$y$1$118({1}SC:U),B,1,5
S:Lfuncs.InitEnemyshootDirection$vx$1$118({1}SC:S),B,1,6
S:Lfuncs.InitEnemyshootDirection$vy$1$118({1}SC:S),B,1,7
S:Lfuncs.InitEnemyshootDirection$es$1$119({2}DG,STenemyshoot:S),R,0,0,[c,b]
F:G$RemovePlayershoot$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.RemovePlayershoot$a$1$121({1}SC:S),B,1,4
S:Lfuncs.RemovePlayershoot$psa$1$122({2}DG,STplayershoot:S),R,0,0,[c,b]
S:Lfuncs.RemovePlayershoot$psb$1$122({2}DG,STplayershoot:S),R,0,0,[]
F:G$InitEnemy$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitEnemy$x$1$124({1}SC:U),B,1,4
S:Lfuncs.InitEnemy$y$1$124({1}SC:U),B,1,5
S:Lfuncs.InitEnemy$t$1$124({1}SC:U),B,1,6
S:Lfuncs.InitEnemy$en$1$125({2}DG,STenemy:S),R,0,0,[c,b]
S:Lfuncs.InitEnemy$sloc0$1$0({1}SC:U),B,1,-2
S:Lfuncs.InitEnemy$sloc1$1$0({1}SC:U),B,1,-1
F:G$InitScript$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitScript$scripter$1$127({2}DG,SC:U),B,1,4
S:Lfuncs.InitScript$labels$1$127({2}DG,DG,SC:U),B,1,6
S:Lfuncs.InitScript$sc$1$128({2}DG,STscript:S),R,0,0,[c,b]
F:G$GetEnemyDirection$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.GetEnemyDirection$en$1$130({2}DG,STenemy:S),B,1,4
S:Lfuncs.GetEnemyDirection$dx$1$131({2}SI:S),R,0,0,[c,b]
S:Lfuncs.GetEnemyDirection$dy$1$131({2}SI:S),R,0,0,[l,h]
S:Lfuncs.GetEnemyDirection$dm$1$131({2}SI:S),R,0,0,[e,d]
S:Lfuncs.GetEnemyDirection$sloc0$1$0({2}DG,SC:U),B,1,-2
S:Lfuncs.GetEnemyDirection$sloc1$1$0({2}SI:S),B,1,-4
F:G$UpdatePlayStage$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$InitStageSprite$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitStageSprite$b$1$133({1}SC:U),B,1,4
S:Lfuncs.InitStageSprite$pointer$1$134({2}DG,SC:U),R,0,0,[c,b]
S:Lfuncs.InitStageSprite$base$1$134({2}SI:S),R,0,0,[e,d]
S:Lfuncs.InitStageSprite$bank$1$134({1}SC:U),R,0,0,[h]
F:G$InitStageSprites$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitStageSprites$spl$1$135({2}DG,SC:U),B,1,4
S:Lfuncs.InitStageSprites$num$1$135({1}SC:U),B,1,6
S:Lfuncs.InitStageSprites$a$1$136({1}SC:U),R,0,0,[c]
F:G$DoSkullSinusMovement$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DoSkullSinusMovement$en$1$139({2}DG,STenemy:S),B,1,4
S:Lfuncs.DoSkullSinusMovement$dv$1$139({1}SC:U),B,1,6
S:Lfuncs.DoSkullSinusMovement$offset$1$139({1}SC:U),B,1,7
S:Lfuncs.DoSkullSinusMovement$sloc0$1$0({2}DG,STenemy:S),B,1,-3
S:Lfuncs.DoSkullSinusMovement$sloc1$1$0({2}DG,SC:U),B,1,-5
S:Lfuncs.DoSkullSinusMovement$sloc2$1$0({1}SC:U),B,1,-1
S:Lfuncs.DoSkullSinusMovement$sloc3$1$0({1}SC:U),B,1,-6
S:Lfuncs.DoSkullSinusMovement$sloc4$1$0({2}SI:S),B,1,-8
F:G$TestSkullOut$0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Lfuncs.TestSkullOut$en$1$143({2}DG,STenemy:S),B,1,4
F:G$SkullAccelX$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.SkullAccelX$en$1$145({2}DG,STenemy:S),B,1,4
F:G$SkullAccelY$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.SkullAccelY$en$1$147({2}DG,STenemy:S),B,1,4
S:Lfuncs.SkullAccelY$sloc0$1$0({1}SC:U),B,1,-1
F:G$SkullBoneCMove$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.SkullBoneCMove$en$1$149({2}DG,STenemy:S),B,1,4
F:G$InitExplosion$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitExplosion$x$1$151({1}SC:U),B,1,4
S:Lfuncs.InitExplosion$y$1$151({1}SC:U),B,1,5
S:Lfuncs.InitExplosion$t$1$151({1}SC:U),B,1,6
S:Lfuncs.InitExplosion$ex$1$152({2}DG,STexplosion:S),R,0,0,[c,b]
F:G$InitSpawnedExplosion$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitSpawnedExplosion$x$1$155({1}SC:U),B,1,4
S:Lfuncs.InitSpawnedExplosion$y$1$155({1}SC:U),B,1,5
S:Lfuncs.InitSpawnedExplosion$w$1$155({1}SC:U),B,1,6
S:Lfuncs.InitSpawnedExplosion$h$1$155({1}SC:U),B,1,7
F:G$InitPowerup$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.InitPowerup$en$1$157({2}DG,STenemy:S),B,1,4
F:G$RemoveEnemy$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.RemoveEnemy$a$1$161({1}SC:S),B,1,4
S:Lfuncs.RemoveEnemy$ea$1$162({2}DG,STenemy:S),R,0,0,[c,b]
S:Lfuncs.RemoveEnemy$eb$1$162({2}DG,STenemy:S),R,0,0,[]
F:G$KillEnemy$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.KillEnemy$a$1$165({1}SC:U),B,1,4
S:Lfuncs.KillEnemy$en$1$166({2}DG,STenemy:S),R,0,0,[c,b]
S:Lfuncs.KillEnemy$t$1$166({1}SC:U),R,0,0,[l]
S:Lfuncs.KillEnemy$sloc0$1$0({1}SC:U),B,1,-1
F:G$KillEnemies$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.KillEnemies$force$1$170({1}SC:U),B,1,4
S:Lfuncs.KillEnemies$a$1$171({1}SC:S),R,0,0,[]
F:G$DoCommonBossAppearingFunction$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DoCommonBossAppearingFunction$en$1$173({2}DG,STenemy:S),B,1,4
F:G$DoEnemyWait$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DoEnemyWait$en$1$176({2}DG,STenemy:S),B,1,4
S:Lfuncs.DoEnemyWait$nxt$1$176({1}SC:U),B,1,6
F:G$DoAracPatternMovement$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DoAracPatternMovement$en$1$179({2}DG,STenemy:S),B,1,4
S:Lfuncs.DoAracPatternMovement$mx$1$179({2}DG,SC:U),B,1,6
S:Lfuncs.DoAracPatternMovement$my$1$179({2}DG,SC:U),B,1,8
S:Lfuncs.DoAracPatternMovement$mt$1$179({2}DG,SI:U),B,1,10
S:Lfuncs.DoAracPatternMovement$sloc0$1$0({2}DG,SC:U),B,1,-2
S:Lfuncs.DoAracPatternMovement$sloc1$1$0({1}SC:U),B,1,-5
S:Lfuncs.DoAracPatternMovement$sloc2$1$0({1}SC:U),B,1,-6
S:Lfuncs.DoAracPatternMovement$sloc3$1$0({2}DG,SC:U),B,1,-4
F:G$DoStage1BossDirectionShoots$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DoStage1BossDirectionShoots$en$1$182({2}DG,STenemy:S),B,1,4
F:G$DoSideShoot$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DoSideShoot$en$1$184({2}DG,STenemy:S),B,1,4
S:Lfuncs.DoSideShoot$freq$1$184({1}SC:U),B,1,6
F:G$PlaySound$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.PlaySound$sound$1$189({2}DG,SC:U),B,1,4
S:Lfuncs.PlaySound$priority$1$189({1}SC:U),B,1,6
F:G$PlayMusic$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.PlayMusic$music$1$192({2}DG,SC:U),B,1,4
S:Lfuncs.PlayMusic$mbank$1$192({1}SC:U),B,1,6
S:Lfuncs.PlayMusic$looped$1$192({1}SC:U),B,1,7
F:G$TestEnemyShoot$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.TestEnemyShoot$en$1$195({2}DG,STenemy:S),B,1,4
S:Lfuncs.TestEnemyShoot$freq$1$195({1}SC:U),B,1,6
F:G$TestEnemyShootOne$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.TestEnemyShootOne$en$1$197({2}DG,STenemy:S),B,1,4
S:Lfuncs.TestEnemyShootOne$freq$1$197({1}SC:U),B,1,6
F:G$TestEnemyShootComplex$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.TestEnemyShootComplex$en$1$199({2}DG,STenemy:S),B,1,4
S:Lfuncs.TestEnemyShootComplex$freq$1$199({1}SC:U),B,1,6
S:Lfuncs.TestEnemyShootComplex$dx$1$199({1}SC:U),B,1,7
S:Lfuncs.TestEnemyShootComplex$dy$1$199({1}SC:U),B,1,8
F:G$InitPlayerConstants$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$SpreadEnemyshootDirection$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.SpreadEnemyshootDirection$x$1$202({1}SC:U),B,1,4
S:Lfuncs.SpreadEnemyshootDirection$y$1$202({1}SC:U),B,1,5
S:Lfuncs.SpreadEnemyshootDirection$vx$1$202({2}DG,SC:S),B,1,6
S:Lfuncs.SpreadEnemyshootDirection$vy$1$202({2}DG,SC:S),B,1,8
S:Lfuncs.SpreadEnemyshootDirection$count$1$202({1}SC:U),B,1,10
S:Lfuncs.SpreadEnemyshootDirection$a$1$203({1}SC:U),R,0,0,[c]
F:G$myRand$0$0({2}DF,SC:U),Z,0,0,0,0,0
F:G$changeBank$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.changeBank$b$1$206({1}SC:U),B,1,4
F:G$DrawSpriteArray$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DrawSpriteArray$s$1$209({2}SI:U),B,1,4
S:Lfuncs.DrawSpriteArray$px$1$209({1}SC:U),B,1,6
S:Lfuncs.DrawSpriteArray$py$1$209({1}SC:U),B,1,7
S:Lfuncs.DrawSpriteArray$tx$1$209({1}SC:U),B,1,8
S:Lfuncs.DrawSpriteArray$ty$1$209({1}SC:U),B,1,9
S:Lfuncs.DrawSpriteArray$x$1$210({1}SC:U),R,0,0,[b]
S:Lfuncs.DrawSpriteArray$y$1$210({1}SC:U),R,0,0,[c]
S:Lfuncs.DrawSpriteArray$sloc0$1$0({1}SC:U),B,1,-1
S:Lfuncs.DrawSpriteArray$sloc1$1$0({1}SC:U),B,1,-2
F:G$DrawQuadSprite$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.DrawQuadSprite$x$1$213({1}SC:U),B,1,4
S:Lfuncs.DrawQuadSprite$y$1$213({1}SC:U),B,1,5
S:Lfuncs.DrawQuadSprite$b$1$213({2}SI:U),B,1,6
F:G$LoadSprite$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.LoadSprite$psg$1$215({2}DG,SC:U),B,1,4
S:Lfuncs.LoadSprite$base$1$215({2}SI:U),B,1,6
S:Lfuncs.LoadSprite$b$1$215({1}SC:U),B,1,8
F:G$LoadTiles$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.LoadTiles$psg$1$217({2}DG,SC:U),B,1,4
S:Lfuncs.LoadTiles$b$1$217({1}SC:U),B,1,6
F:G$LoadGraphics$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.LoadGraphics$psg$1$219({2}DG,SC:U),B,1,4
S:Lfuncs.LoadGraphics$bin$1$219({2}DG,SC:U),B,1,6
S:Lfuncs.LoadGraphics$size$1$219({2}SI:S),B,1,8
S:Lfuncs.LoadGraphics$b$1$219({1}SC:U),B,1,10
F:G$LoadBGPalette$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.LoadBGPalette$p$1$221({2}DG,SC:U),B,1,4
S:Lfuncs.LoadBGPalette$b$1$221({1}SC:U),B,1,6
F:G$LoadSpritePalette$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$InterruptHandler$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$InitConsole$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$fillBackground$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.fillBackground$a$1$227({2}SI:U),R,0,0,[c,b]
F:G$ClearScreen$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$UpdateScroll$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.UpdateScroll$sx$1$230({2}SI:S),B,1,4
S:Lfuncs.UpdateScroll$sy$1$230({2}SI:S),B,1,6
F:G$WriteText$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.WriteText$text$1$232({2}DG,SC:U),B,1,4
S:Lfuncs.WriteText$x$1$232({1}SC:U),B,1,6
S:Lfuncs.WriteText$y$1$232({1}SC:U),B,1,7
S:Lfuncs.WriteText$a$1$233({2}SI:S),R,0,0,[c,b]
F:G$WriteNumber$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.WriteNumber$i$1$234({2}SI:U),B,1,4
S:Lfuncs.WriteNumber$d$1$234({2}SI:U),B,1,6
S:Lfuncs.WriteNumber$x$1$234({1}SC:U),B,1,8
S:Lfuncs.WriteNumber$y$1$234({1}SC:U),B,1,9
F:G$ClearTiles$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$LoadFont$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$InitStage$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$checkgamepause$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$UpdateStage$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$UpdatePSG$0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$updatestage6endbossAssert$0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lfuncs.updatestage6endbossAssert$en$1$249({2}DG,STenemy:S),B,1,4
T:Ffuncs$stage3star[({0}S:S$posx$0$0({1}SC:U),Z,0,0)({1}S:S$posy$0$0({1}SC:U),Z,0,0)({2}S:S$speed$0$0({1}SC:U),Z,0,0)]
T:Ffuncs$enemy[({0}S:S$enemyposx$0$0({1}SC:U),Z,0,0)({1}S:S$enemyposy$0$0({1}SC:U),Z,0,0)({2}S:S$enemytype$0$0({1}SC:U),Z,0,0)({3}S:S$enemyframe$0$0({1}SC:U),Z,0,0)({4}S:S$enemyparama$0$0({1}SC:U),Z,0,0)({5}S:S$enemyparamb$0$0({1}SC:U),Z,0,0)({6}S:S$enemyenergy$0$0({1}SC:U),Z,0,0)({7}S:S$enemywidth$0$0({1}SC:U),Z,0,0)({8}S:S$enemyheight$0$0({1}SC:U),Z,0,0)]
T:Ffuncs$enemyshoot[({0}S:S$enemyshootposx$0$0({1}SC:U),Z,0,0)({1}S:S$enemyshootposy$0$0({1}SC:U),Z,0,0)({2}S:S$enemyshootvelx$0$0({1}SC:S),Z,0,0)({3}S:S$enemyshootvely$0$0({1}SC:S),Z,0,0)({4}S:S$enemyshoottype$0$0({1}SC:U),Z,0,0)]
T:Ffuncs$scroll[({0}S:S$scrolllock$0$0({2}SI:S),Z,0,0)({2}S:S$scrolltimes$0$0({2}SI:S),Z,0,0)({4}S:S$scrolljump$0$0({2}SI:S),Z,0,0)({6}S:S$scrollspeedx$0$0({2}SI:S),Z,0,0)({8}S:S$scrollspeedy$0$0({2}SI:S),Z,0,0)]
T:Ffuncs$script[({0}S:S$scripterpass$0$0({2}SI:U),Z,0,0)({2}S:S$scripterscript$0$0({2}DG,SC:U),Z,0,0)({4}S:S$scripterlabels$0$0({2}DG,DG,SC:U),Z,0,0)({6}S:S$scripterframe$0$0({1}SC:U),Z,0,0)({7}S:S$scripterloop$0$0({1}SC:S),Z,0,0)]
T:Ffuncs$playershoot[({0}S:S$playershootx$0$0({1}SC:U),Z,0,0)({1}S:S$playershooty$0$0({1}SC:U),Z,0,0)({2}S:S$playershoottype$0$0({1}SC:U),Z,0,0)({3}S:S$playershootvelx$0$0({1}SC:S),Z,0,0)({4}S:S$playershootvely$0$0({1}SC:U),Z,0,0)]
T:Ffuncs$explosion[({0}S:S$explosionposx$0$0({1}SC:U),Z,0,0)({1}S:S$explosionposy$0$0({1}SC:U),Z,0,0)({2}S:S$explosionsprite$0$0({1}SC:U),Z,0,0)({3}S:S$explosiontype$0$0({1}SC:U),Z,0,0)]
T:Ffuncs$timeredlabel[({0}S:S$timeredlabely$0$0({1}SC:U),Z,0,0)({1}S:S$timeredlabelt$0$0({1}SC:U),Z,0,0)]
S:G$state$0$0({4}SL:U),E,0,0
S:G$selectornamestage$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$jukebox_songs$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$jukebox_names$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$ww2plane_patterns$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$intro1labels$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$intro3labels$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$finishlabels$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$stageinitdata$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$spawners$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$imagepointers$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$monsterheadshootdirecionsx$0$0({0}DA0d,SC:S),E,0,0
S:G$monsterheadshootdirecionsy$0$0({0}DA0d,SC:S),E,0,0
S:G$difficultlabels$0$0({0}DA0d,DG,SC:U),E,0,0
S:G$playerupdatefunctions$0$0({0}DA0d,DC,DF,SV:S),E,0,0
S:G$keystatus$0$0({2}SI:U),E,0,0
S:G$stageframe$0$0({2}SI:U),E,0,0
S:G$stageframe2mod$0$0({1}SC:U),E,0,0
S:G$stageframe4mod$0$0({1}SC:U),E,0,0
S:G$sprite82anim$0$0({1}SC:U),E,0,0
S:G$sprite164anim$0$0({1}SC:U),E,0,0
S:G$basestage$0$0({1}SC:U),E,0,0
S:G$playstage$0$0({1}SC:U),E,0,0
S:G$updateplaystage$0$0({1}SC:U),E,0,0
S:G$stagenum$0$0({1}SC:U),E,0,0
S:G$laststagenum$0$0({1}SC:U),E,0,0
S:G$numplayers$0$0({1}SC:U),E,0,0
S:G$exitplaystage$0$0({1}SC:U),E,0,0
S:G$gamelevel$0$0({1}SC:U),E,0,0
S:G$gamestock$0$0({1}SC:U),E,0,0
S:G$gamepause$0$0({1}SC:U),E,0,0
S:G$playerx$0$0({1}SC:U),E,0,0
S:G$playery$0$0({1}SC:U),E,0,0
S:G$playertype$0$0({1}SC:U),E,0,0
S:G$playercounter$0$0({1}SC:U),E,0,0
S:G$playershootcounter$0$0({1}SC:U),E,0,0
S:G$playerside$0$0({1}SC:U),E,0,0
S:G$playerspeed$0$0({1}SC:U),E,0,0
S:G$playershootlevel$0$0({1}SC:U),E,0,0
S:G$playershootmax$0$0({1}SC:U),E,0,0
S:G$numplayershoots$0$0({1}SC:U),E,0,0
S:G$playershoots$0$0({15}DA3d,STplayershoot:S),E,0,0
S:G$shootcount$0$0({1}SC:U),E,0,0
S:G$numenemyshoots$0$0({1}SC:U),E,0,0
S:G$enemyshoots$0$0({50}DA10d,STenemyshoot:S),E,0,0
S:G$playstageshootspeed$0$0({1}SC:U),E,0,0
S:G$numexplosions$0$0({1}SC:U),E,0,0
S:G$explosions$0$0({40}DA10d,STexplosion:S),E,0,0
S:G$numenemies$0$0({1}SC:U),E,0,0
S:G$enemies$0$0({90}DA10d,STenemy:S),E,0,0
S:G$maplines$0$0({2}DG,SC:U),E,0,0
S:G$maplineslength$0$0({2}SI:U),E,0,0
S:G$maptiles$0$0({2}DG,SC:U),E,0,0
S:G$mappositionx$0$0({2}SI:U),E,0,0
S:G$mappositiony$0$0({2}SI:S),E,0,0
S:G$oldmappositiony$0$0({2}SI:S),E,0,0
S:G$lastbank$0$0({1}SC:U),E,0,0
S:G$mapstatics$0$0({2}DG,SI:U),E,0,0
S:G$mapstaticscount$0$0({2}SI:U),E,0,0
S:G$mapstaticsbank$0$0({1}SC:U),E,0,0
S:G$musicbank$0$0({1}SC:U),E,0,0
S:G$mapbank$0$0({1}SC:U),E,0,0
S:G$playstagebank$0$0({1}SC:U),E,0,0
S:G$numscrolls$0$0({1}SC:U),E,0,0
S:G$scrollactspeedy$0$0({1}SC:S),E,0,0
S:G$scrollactspeedx$0$0({1}SC:S),E,0,0
S:G$scrollact$0$0({1}SC:U),E,0,0
S:G$scrolltimes$0$0({2}SI:U),E,0,0
S:G$disablescroll$0$0({1}SC:U),E,0,0
S:G$scrolls$0$0({2}DG,STscroll:S),E,0,0
S:G$numscripts$0$0({1}SC:U),E,0,0
S:G$scripts$0$0({32}DA4d,STscript:S),E,0,0
S:G$numtimeredlabels$0$0({1}SC:U),E,0,0
S:G$timeredlabels$0$0({6}DA3d,STtimeredlabel:S),E,0,0
S:G$introstageposx$0$0({2}SI:S),E,0,0
S:G$introstagevelx$0$0({2}SI:S),E,0,0
S:G$dojukebox$0$0({1}SC:U),E,0,0
S:G$spawnedexplosionposx$0$0({1}SC:U),E,0,0
S:G$spawnedexplosionposy$0$0({1}SC:U),E,0,0
S:G$spawnedexplosionwidth$0$0({1}SC:U),E,0,0
S:G$spawnedexplosionheight$0$0({1}SC:U),E,0,0
S:G$spawnedexplosiontime$0$0({1}SC:U),E,0,0
S:G$stage4playrays$0$0({1}SC:U),E,0,0
S:G$numinterrupts$0$0({1}SC:U),E,0,0
S:G$powerupx$0$0({1}SC:U),E,0,0
S:G$powerupy$0$0({1}SC:U),E,0,0
S:G$powerupt$0$0({1}SC:U),E,0,0
S:G$powerupv$0$0({1}SC:S),E,0,0
S:G$powerupcounter$0$0({2}SI:U),E,0,0
S:G$lastplayedmusic$0$0({2}DG,SC:U),E,0,0
S:G$lastplayedmusicbank$0$0({1}SC:U),E,0,0
S:G$lastplayedmusiclooped$0$0({1}SC:U),E,0,0
S:G$stage8phase$0$0({1}SC:U),E,0,0
S:G$stage3stars$0$0({18}DA6d,STstage3star:S),E,0,0
S:G$devkit_SMS_init$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_displayOn$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_displayOff$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setBGScrollX$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setBGScrollY$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setBackdropColor$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_useFirstHalfTilesforSprites_False$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_useFirstHalfTilesforSprites_True$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setSpriteMode$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_mapROMBank$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_VDPturnOnFeature$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadTileMap$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadPSGaidencompressedTiles$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadSTMcompressedTileMap$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setBGPaletteColor$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setSpritePaletteColor$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadBGPalette$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_loadSpritePalette$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setNextTileatXY$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setTile$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_addSprite$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_initSprites$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_finalizeSprites$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_waitForVBlank$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_copySpritestoSAT$0$0({2}DF,SV:S),C,0,0
S:G$devkit_UNSAFE_SMS_copySpritestoSAT$0$0({2}DF,SV:S),C,0,0
S:G$devkit_UNSAFE_SMS_VRAMmemcpy32$0$0({2}DF,SV:S),C,0,0
S:G$devkit_UNSAFE_SMS_VRAMmemcpy64$0$0({2}DF,SV:S),C,0,0
S:G$devkit_UNSAFE_SMS_VRAMmemcpy128$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_queryPauseRequested$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SMS_resetPauseRequest$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_getKeysStatus$0$0({2}DF,SI:U),C,0,0
S:G$devkit_SMS_getKeysPressed$0$0({2}DF,SI:U),C,0,0
S:G$devkit_SMS_getKeysHeld$0$0({2}DF,SI:U),C,0,0
S:G$devkit_SMS_getKeysReleased$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_UP$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_DOWN$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_LEFT$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_RIGHT$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_1$0$0({2}DF,SI:U),C,0,0
S:G$devkit_PORT_A_KEY_2$0$0({2}DF,SI:U),C,0,0
S:G$devkit_SMS_VRAMmemcpy$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_VRAMmemcpy_brief$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_VRAMmemset$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_VRAMmemsetW$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setLineInterruptHandler$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_setLineCounter$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_enableLineInterrupt$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SMS_disableLineInterrupt$0$0({2}DF,SV:S),C,0,0
S:G$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0({2}DF,SI:U),C,0,0
S:G$devkit_VDPFEATURE_LEFTCOLBLANK$0$0({2}DF,SI:U),C,0,0
S:G$devkit_SPRITEMODE_NORMAL$0$0({2}DF,SC:U),C,0,0
S:G$devkit_PSGPlay$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGCancelLoop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGPlayNoRepeat$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGStop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGResume$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGGetStatus$0$0({2}DF,SC:U),C,0,0
S:G$devkit_PSGSetMusicVolumeAttenuation$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXPlay$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXPlayLoop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXCancelLoop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXStop$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXGetStatus$0$0({2}DF,SC:U),C,0,0
S:G$devkit_PSGSilenceChannels$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGRestoreVolumes$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGFrame$0$0({2}DF,SV:S),C,0,0
S:G$devkit_PSGSFXFrame$0$0({2}DF,SV:S),C,0,0
S:G$devkit_SFX_CHANNEL2$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SFX_CHANNEL3$0$0({2}DF,SC:U),C,0,0
S:G$devkit_SFX_CHANNELS2AND3$0$0({2}DF,SC:U),C,0,0
S:G$_assert$0$0({2}DF,SV:S),C,0,0
S:G$atof$0$0({2}DF,SF:S),C,0,0
S:G$atoi$0$0({2}DF,SI:S),C,0,0
S:G$atol$0$0({2}DF,SL:S),C,0,0
S:G$_uitoa$0$0({2}DF,SV:S),C,0,0
S:G$_itoa$0$0({2}DF,SV:S),C,0,0
S:G$_ultoa$0$0({2}DF,SV:S),C,0,0
S:G$_ltoa$0$0({2}DF,SV:S),C,0,0
S:G$rand$0$0({2}DF,SI:S),C,0,0
S:G$srand$0$0({2}DF,SV:S),C,0,0
S:G$calloc$0$0({2}DF,DG,SV:S),C,0,0
S:G$malloc$0$0({2}DF,DG,SV:S),C,0,0
S:G$realloc$0$0({2}DF,DG,SV:S),C,0,0
S:G$free$0$0({2}DF,SV:S),C,0,0
S:G$abs$0$0({2}DF,SI:S),C,0,0
S:G$labs$0$0({2}DF,SL:S),C,0,0
S:G$mblen$0$0({2}DF,SI:S),C,0,0
S:G$mbtowc$0$0({2}DF,SI:S),C,0,0
S:G$wctomb$0$0({2}DF,SI:S),C,0,0
S:G$mbstowcs$0$0({2}DF,SI:U),C,0,0
S:G$wcstombs$0$0({2}DF,SI:U),C,0,0
