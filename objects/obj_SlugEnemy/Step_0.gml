envsp = envsp + engrv;


if (place_meeting(x + enhsp, y, obj_enwall))
{	
	while (!place_meeting(x + sign(enhsp), y,obj_enwall))
	{
		x = x + sign(enhsp);
	}
	enhsp = -enhsp;
	
}

if (place_meeting(x + enhsp, y, obj_wall))
{	
	while (!place_meeting(x + sign(enhsp), y,obj_wall))
	{
		x = x + sign(enhsp);
	}
	enhsp = -enhsp;
	
}


if (place_meeting(x, y + envsp, obj_wall))
{
	while (!place_meeting(x, y + sign(envsp), obj_wall))
	{
		y = y + sign(envsp);
	}
	envsp = 0;
	if (KnockbackEnd == false){ sign(enhsp); KnockbackEnd = true}

}

if KnockbackStart = 1 
{
	enhsp = sign(enhsp) * 6;
	envsp = -10;
	KnockbackStart = 0;
	KnockbackEnd = false
}

image_xscale = sign(enhsp);

x += enhsp
y += envsp

if hp <= 0 instance_destroy();

