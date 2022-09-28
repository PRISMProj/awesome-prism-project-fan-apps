//get player input
if (hascontrol)
{
	key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
}
else
{
	key_left = 0
	key_right = 0
	key_jump = 0
}	

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

	//calculate jump
if (place_meeting(x,y+1,oWall)) and (key_jump)
{
	vsp = -7;
	audio_play_sound(snJump,3,false);
}	

//horizontal collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}	
	hsp = 0;
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
	sprite_index = sPlayerJump;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1 else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp = 0)
	{
		sprite_index = sPlayerIdle;
	}
	else
	{
		sprite_index = sPlayerRun;
	}
}

//change sprite direction
if (hsp != 0) image_xscale = sign(hsp);

//yeet ikumin
firingdelay = firingdelay - 1;
if (keyboard_check_pressed(vk_space)) and (firingdelay < 0)
{
	audio_play_sound(snYeet,4,false);
	firingdelay = 25;
	with (instance_create_layer(x,y+12,"IkuminProjectile",oIkuminProjectile))
	{
		if (other.image_xscale < 0)
		{
			sprite_index = sIkuminProjectile
			image_xscale = -1
			speed = -10
		}
		else
		{
			sprite_index = sIkuminProjectile
			image_xscale = 1
			speed = 10
		}
	}	
}	