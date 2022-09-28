/// death
audio_play_sound(snKill,1,false);
instance_destroy(oPlayer);
SlideTransition(TRANS_MODE.GOTO,room);