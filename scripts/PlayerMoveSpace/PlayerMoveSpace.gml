
if (keyboard_check(ord("A")) = true)
{
	x += -5;
	y += 0;

	global.PlayerX += -5;
}

if (keyboard_check(ord("D")) = true)
{
	global.PlayerX += 5;

	x += 5;
	y += 0;
}

if (keyboard_check(vk_shift) = true)
{

	if (keyboard_check(ord("D")) = true)
	{
		x += 10;
		y += 0;
	
		global.dashing = true;
	
		global.PlayerX += 10;
	}

	if (keyboard_check(ord("A")) = true)
	{
		x += -10;
		y += 0;
	
		global.dashing = true;
	
		global.PlayerX += -10;
	}
}