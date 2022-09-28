//progress text
letters += spd;
text = string_copy(endtext[currentline],1,floor(letters));

//next line
if (letters >= length) and (keyboard_check_pressed(vk_anykey))
{
	if (currentline+1 == array_length_1d(endtext))
	{
		SlideTransition(TRANS_MODE.RESTART);	
	}	
	else
	{
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);
	}	
}	