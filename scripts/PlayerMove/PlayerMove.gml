
if (keyboard_check(vk_left) = true)
{
	x += -5;
	y += 0;

	global.PlayerX += -5;
}

if (keyboard_check(vk_right) = true)
{
	global.PlayerX += 5;

	x += 5;
	y += 0;
}

if (keyboard_check(vk_shift) = true)
{

	if (keyboard_check(vk_right) = true)
	{
		x += 10;
		y += 0;
	
		dashing = true;
	
		global.PlayerX += 10;
	}

	if (keyboard_check(vk_left) = true)
	{
		x += -10;
		y += 0;
	
		dashing = true;
	
		global.PlayerX += -10;
	}
}