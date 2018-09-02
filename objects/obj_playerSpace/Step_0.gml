cooldown += 1;

if(IsHit == true)
{
	InvincibleFrames += 1;
}

if(InvincibleFrames >= 60)
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

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	room_goto(LoseScreen_Room);
}

if(cooldown >= 10)
{
	if(global.dashing = false)
	{
		if (keyboard_check(vk_space) = true)
		{
			instance_create_layer(global.PlayerX, 650, "Shot_Layer", obj_ShotSpace);
		
			cooldown = 0;
		}
	}
}



if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 4)
{
	with(obj_Hearts) position_destroy(280, 735);
}

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 3)
{
	with(obj_Hearts) position_destroy(220, 735);
}

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 2)
{
	with(obj_Hearts) position_destroy(160, 735);
}

if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 1)
{
	with(obj_Hearts) position_destroy(100, 735);
}