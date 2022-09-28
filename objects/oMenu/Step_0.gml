/// control menu

//item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//controls
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		audio_play_sound(snPing,5,false);
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		audio_play_sound(snPing,5,false);
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(snMenu,6,false);
		audio_stop_sound(snArtificial);
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		menu_control = false;
	}	
}	

if (menu_x > gui_width+150) and (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 2: default: SlideTransition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	}	
}	