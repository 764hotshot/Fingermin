/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 1F511A51
/// @DnDArgument : "health" "-1"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-1);

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 16B145A3
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "var" "BossHP"
global.BossHP += -1;