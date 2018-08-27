/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 6B86D8E6
/// @DnDArgument : "var" "BossHPScale"
global.BossHPScale = 0;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 5B0497EA
/// @DnDArgument : "value" "global.BossHP/25"
/// @DnDArgument : "var" "BossHPScale"
global.BossHPScale = global.BossHP/25;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 2BF5CAA3
/// @DnDArgument : "xscale" "global.BossHPScale"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
image_xscale = global.BossHPScale;
image_yscale += 0;

/// @DnDAction : YoYo Games.Movement.Jump_To_Start
/// @DnDVersion : 1
/// @DnDHash : 40451984
x = xstart;
y = ystart;