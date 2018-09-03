if (directionswap = false) enhsp = 2;

else enhsp = -2;

envsp = envsp + engrv;

enhsp *= 1.5


if (place_meeting(x + enhsp, y, obj_enwall))
{	
	while (!place_meeting(x + sign(enhsp), y,obj_enwall))
	{
		x = x + sign(enhsp);
	}
	//directionswap = (!directionswap)
	//if (directionswap = true) image_xscale = -1;
	//else image_xscale = 1;
	enhsp = -enhsp;
}

if (place_meeting(x, y + envsp, obj_wall))
{
	while (!place_meeting(x, y + sign(envsp), obj_wall))
	{
		y = y + sign(envsp);
	}
	envsp = 0;
}

x += enhsp

y += envsp

if health <= 0 instance_destroy();

