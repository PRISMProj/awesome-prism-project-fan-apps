
vsp = vsp + grv;

//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}	
	hsp = -hsp;
}	
x = x + hsp;

//vertical collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);	
	}	
	vsp = 0;
}	
y = y + vsp;

//animation
if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sSmolMushroom;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1 else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp = 0)
	{
		sprite_index = sSmolMushroom;
	}
	else
	{
		sprite_index = sSmolMushroom
	}
}

//change sprite direction
if (hsp != 0) image_xscale = sign(hsp);

//enemy death
if (smolhp <= 0)
{
	audio_play_sound(snKill,2,false);
	instance_destroy();
}	