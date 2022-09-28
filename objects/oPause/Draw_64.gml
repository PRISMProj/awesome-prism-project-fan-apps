if (pause)
{
	var gui_width = display_get_gui_width();
	var gui_height = display_get_gui_height();
	draw_set_color(c_navy);
	draw_rectangle(0, 0, gui_width, gui_height, false);
	draw_set_color(c_fuchsia);
	draw_set_font(fMenu);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(display_get_gui_width()/2, display_get_gui_height()/2, "Paused");
	menu_frame += menu_speed;
	draw_sprite(menu_sprite,menu_frame,gui_width/4,gui_height/2);
	
}	