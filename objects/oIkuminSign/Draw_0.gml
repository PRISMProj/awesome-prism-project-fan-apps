draw_self();

if (showtext == 1)
{
draw_set_color(c_fuchsia);
draw_set_font(fText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_text(x,y+h+border,text);	
}	