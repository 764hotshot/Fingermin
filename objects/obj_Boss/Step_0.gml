move_wrap(1, 1, 0);

LightningWait += 1;

MoveChangeWait += 1;

if(MoveChangeWait >= 60)
{
	EnemyMovement = random_range(7, -7);

	hspeed = EnemyMovement;

	MoveChangeWait = 0;
}

if hp <= 0
{
	room_goto(WinScreen_Room);
}

if(LightningWait >= 120)
{
	instance_create_layer(Warning1X, 700, "Lightning_Layer", obj_Lightning);
	if (global.TwoPlayer = 1) instance_create_layer(Warning2X, 700, "Lightning_Layer", obj_Lightning);
	LightningWait = 0;

	with(obj_Warning) instance_destroy();
}

if(LightningWait == 40)
{
	instance_create_layer(obj_player1Land.x, 0, "Lightning_Layer", obj_Warning);
	Warning1X = obj_player1Land.x
	if (global.TwoPlayer = 1){ instance_create_layer(obj_player2Land.x, 0, "Lightning_Layer", obj_Warning) Warning2X = obj_player2Land.x; }
	
}