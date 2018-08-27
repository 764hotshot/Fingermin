/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55F948C9
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "LightningDestroyTimer"
LightningDestroyTimer += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5534FA3F
/// @DnDArgument : "var" "LightningDestroyTimer"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "60"
if(LightningDestroyTimer > 60)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 52486B04
	/// @DnDParent : 5534FA3F
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 461433AA
	/// @DnDParent : 5534FA3F
	/// @DnDArgument : "var" "LightningDestroyTimer"
	LightningDestroyTimer = 0;
}