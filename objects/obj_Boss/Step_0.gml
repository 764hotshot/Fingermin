move_wrap(1, 1, 0);

LightningWait += 1;

MoveChangeWait += 1;

if(MoveChangeWait >= 60)
{
	EnemyMovement = random_range(7, -7);

	hspeed = EnemyMovement;

	MoveChangeWait = 0;
}

if(!variable_instance_exists(id, "health")) health = 0;
if(health <= 0)
{
	room_goto(WinScreen_Room);
}

if(LightningWait >= 60)
{
	instance_create_layer(obj_player1Land.x, 700, "Lightning_Layer", obj_Lightning);
	if (global.TwoPlayer = 1) instance_create_layer(obj_player2Land.x, 700, "Lightning_Layer", obj_Lightning);
	LightningWait = 0;

	with(obj_Warning) instance_destroy();
}

if(LightningWait == 20)
{
	instance_create_layer(obj_player1Land.x, 700, "Lightning_Layer", obj_Warning);
	if (global.TwoPlayer = 1) instance_create_layer(obj_player2Land.x, 700, "Lightning_Layer", obj_Warning);
}