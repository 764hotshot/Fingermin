if (abs(gamepad_axis_value(0, gp_axislh)) > 0.2)
{

	key_right = abs(min(gamepad_axis_value(0, gp_axislh), 0));
	key_left = max(gamepad_axis_value(0, gp_axislh), 0);
	
}

if (gamepad_button_check_pressed(0, gp_face1)) key_jump = 1;

var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

WallJumpWait ++

InvincibleFrames ++

if ((place_meeting(x, y+1, obj_wall))) && (key_jump)
{
	vsp = -15;
}

if ((place_meeting(x + 1, y, obj_wall)) || (place_meeting(x - 1, y, obj_wall))) && (key_jump) && (WallJumpWait >= 20)
{
	
	vsp = -15
	WallJumpWait = 0
	
}

if (place_meeting(x + hsp, y, obj_wall))
{
	while (!place_meeting(x + sign(hsp), y,obj_wall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

if (place_meeting(x + hsp, y, obj_worldWall))
{
	while (!place_meeting(x + sign(hsp), y,obj_worldWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}

x += hsp;

if (place_meeting(x, y + vsp, obj_wall))
{
	while (!place_meeting(x, y + sign(vsp),obj_wall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}

if (place_meeting(x, y + vsp, obj_worldWall))
{
	while (!place_meeting(x, y + sign(vsp),obj_worldWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}


y += vsp;

if (!place_meeting(x, y+1, obj_wall))
{
	sprite_index = spr_player2LandAir;
	image_speed = 0;
	if (sign(vsp)) > 0 image_index = 1; else image_index = 0;
	
}
else
{
	image_speed = 1;
	if (hsp == 0) 
	{
	sprite_index = spr_player2Land;
	}
	else
	{
	sprite_index = spr_player2LandRun;
	}
}
if (hsp != 0) image_xscale = sign(hsp);


