/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 586EDCEF
/// @DnDArgument : "var" "global.PlayerX"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "-10"
if(global.PlayerX <= -10)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0DB67EE2
	/// @DnDParent : 586EDCEF
	/// @DnDArgument : "x" "1014"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x = 1014;
	y += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3729E5A1
	/// @DnDParent : 586EDCEF
	/// @DnDArgument : "value" "1014"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX = 1014;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A491DE1
/// @DnDArgument : "var" "global.PlayerX"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "1024"
if(global.PlayerX >= 1024)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 5A6A0030
	/// @DnDParent : 2A491DE1
	/// @DnDArgument : "x" "10"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x = 10;
	y += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 731C7C43
	/// @DnDParent : 2A491DE1
	/// @DnDArgument : "value" "10"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX = 10;
}