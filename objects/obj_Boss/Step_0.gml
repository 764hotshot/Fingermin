move_wrap(1, 1, 0);

LightningWait += 1;

MoveChangeWait += 1;

if(MoveChangeWait >= 60)
{
	EnemyMovement = random_range(15, -15);

	hspeed = EnemyMovement;

	MoveChangeWait = 0;
}

if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	room_goto(WinScreen_Room);
}

if(LightningWait >= 60)
{
	instance_create_layer(WarningX, 700, "Lightning_Layer", obj_Lightning);

	LightningWait = 0;

	with(obj_Warning) instance_destroy();
}

if(LightningWait == 20)
{
	instance_create_layer(global.PlayerX, 700, "Lightning_Layer", obj_Warning);

	WarningX = global.PlayerX;
}