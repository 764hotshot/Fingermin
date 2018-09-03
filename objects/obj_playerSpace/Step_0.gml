cooldown += 1;

if(IsHit == true)
{
	InvincibleFrames += 1;
}

if(InvincibleFrames >= 120)
{
	IsHit = false;

	InvincibleFrames = 0;
}

script_execute(PlayerMoveSpace);


script_execute(ScreenWrapSpace);

if (keyboard_check(vk_shift) = true)
{
	if(IsHit == false)
	{
		global.dashing = false;
	}
}

if(!variable_instance_exists(id, "lives")) lives = 0;
if(lives <= 0)
{
	room_goto(LoseScreen_Room);
}

if(cooldown >= 20)
{
	if(global.dashing = false)
	{
		if (keyboard_check(vk_space) = true or mouse_check_button(mb_left))
		{
			instance_create_layer(global.PlayerX + 23, 592, "Shot_Layer", obj_ShotSpace);
			instance_create_layer(global.PlayerX - 23, 592, "Shot_Layer", obj_ShotSpace)
			cooldown = 0;
		}
	}
}

if(!variable_instance_exists(id, "lives")) lives = 0;
if(lives <= 4)
{
	with(obj_Hearts) position_destroy(280, 735);
}

if(!variable_instance_exists(id, "lives")) lives = 0;
if(lives <= 3)
{
	with(obj_Hearts) position_destroy(220, 735);
}

if(!variable_instance_exists(id, "lives")) lives = 0;
if(lives <= 2)
{
	with(obj_Hearts) position_destroy(160, 735);
}

if(!variable_instance_exists(id, "lives")) lives = 0;
if(lives <= 1)
{
	with(obj_Hearts) position_destroy(100, 735);
}