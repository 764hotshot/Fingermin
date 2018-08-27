/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 108D8E53
/// @DnDArgument : "var" "IsHit"
/// @DnDArgument : "value" "false"
if(IsHit == false)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 567BD3EF
	/// @DnDParent : 108D8E53
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6694E8D6
	/// @DnDParent : 108D8E53
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "IsHit"
	IsHit = true;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 2D697B60
	/// @DnDParent : 108D8E53
	x = xstart;
	y = ystart;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 4C255490
	/// @DnDParent : 108D8E53
	/// @DnDArgument : "value" "480"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX = 480;
}