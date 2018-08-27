/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 11096717
move_wrap(1, 1, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D2D64DA
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "LightningWait"
LightningWait += 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 329E766B
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "MoveChangeWait"
MoveChangeWait += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17867F5A
/// @DnDArgument : "var" "MoveChangeWait"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "60"
if(MoveChangeWait >= 60)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B46E880
	/// @DnDParent : 17867F5A
	/// @DnDArgument : "expr" "random_range(15, -15)"
	/// @DnDArgument : "var" "EnemyMovement"
	EnemyMovement = random_range(15, -15);

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 27883F05
	/// @DnDParent : 17867F5A
	/// @DnDArgument : "speed" "EnemyMovement"
	/// @DnDArgument : "type" "1"
	hspeed = EnemyMovement;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47A3D6C2
	/// @DnDParent : 17867F5A
	/// @DnDArgument : "var" "MoveChangeWait"
	MoveChangeWait = 0;
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 47D85D9E
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 3B514A52
	/// @DnDParent : 47D85D9E
	/// @DnDArgument : "room" "WinScreen_Room"
	/// @DnDSaveInfo : "room" "aa83113d-40ff-4fa2-b29d-068d7ffa7d48"
	room_goto(WinScreen_Room);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2221BE9D
/// @DnDArgument : "var" "LightningWait"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "60"
if(LightningWait >= 60)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 130883BC
	/// @DnDParent : 2221BE9D
	/// @DnDArgument : "xpos" "WarningX"
	/// @DnDArgument : "ypos" "700"
	/// @DnDArgument : "objectid" "obj_Lightning"
	/// @DnDArgument : "layer" ""Lightning_Layer""
	/// @DnDSaveInfo : "objectid" "023dd38b-3242-4d1f-8a77-2f90e8904cdc"
	instance_create_layer(WarningX, 700, "Lightning_Layer", obj_Lightning);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C559D1A
	/// @DnDParent : 2221BE9D
	/// @DnDArgument : "var" "LightningWait"
	LightningWait = 0;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6F40339F
	/// @DnDApplyTo : 6fac497b-ec65-4a22-b337-4445480a00f7
	/// @DnDParent : 2221BE9D
	with(obj_Warning) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 196381F0
/// @DnDArgument : "var" "LightningWait"
/// @DnDArgument : "value" "20"
if(LightningWait == 20)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 787CD0AF
	/// @DnDParent : 196381F0
	/// @DnDArgument : "xpos" "global.PlayerX"
	/// @DnDArgument : "ypos" "700"
	/// @DnDArgument : "objectid" "obj_Warning"
	/// @DnDArgument : "layer" ""Lightning_Layer""
	/// @DnDSaveInfo : "objectid" "6fac497b-ec65-4a22-b337-4445480a00f7"
	instance_create_layer(global.PlayerX, 700, "Lightning_Layer", obj_Warning);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43E7695B
	/// @DnDParent : 196381F0
	/// @DnDArgument : "expr" "global.PlayerX"
	/// @DnDArgument : "var" "WarningX"
	WarningX = global.PlayerX;
}