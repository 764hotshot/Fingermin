enhsp = 2.5;

envsp = envsp + engrv;

if (place_meeting(x + enhsp, y, obj_wall))
	
	while (!place_meeting(x + sign(enhsp), y,obj_wall))
	{
		x = x + sign(enhsp);
	}
	//if (enhsp != 0) image_xscale = sign(!enhsp);
	enhsp = 0;


if (place_meeting(x, y + envsp, obj_wall))
{
	while (!place_meeting(x, y + sign(envsp), obj_wall))
	{
		y = y + sign(envsp);
	}
	envsp = 0;
}

x += 2.5

y += envsp

if health <= 0 instance_destroy();

