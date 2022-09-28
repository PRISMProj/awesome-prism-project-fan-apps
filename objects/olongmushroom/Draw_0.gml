draw_self();

if (flash > 0)
{
	flash = flash - 1;
	shader_set(ShWhite);
	draw_self();
	shader_reset();
}	