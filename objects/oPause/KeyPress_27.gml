if (!pause)
{
	pause = true;
	instance_deactivate_all(true);
	audio_play_sound(snMenu,6,false);
}
else
{
	pause = false;
	instance_activate_all();
	audio_play_sound(snMenu,6,false);
}	