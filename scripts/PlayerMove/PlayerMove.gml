/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 3633FA7E
/// @DnDArgument : "key" "vk_left"
var l3633FA7E_0;
l3633FA7E_0 = keyboard_check(vk_left);
if (l3633FA7E_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 4C7153C2
	/// @DnDParent : 3633FA7E
	/// @DnDArgument : "x" "-5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -5;
	y += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6B8896AC
	/// @DnDParent : 3633FA7E
	/// @DnDArgument : "value" "-5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX += -5;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 680D6817
/// @DnDArgument : "key" "vk_right"
var l680D6817_0;
l680D6817_0 = keyboard_check(vk_right);
if (l680D6817_0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7B3B9D6B
	/// @DnDParent : 680D6817
	/// @DnDArgument : "value" "5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX += 5;

	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 1D7953FF
	/// @DnDParent : 680D6817
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += 5;
	y += 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 6AB0935D
/// @DnDArgument : "key" "vk_shift"
var l6AB0935D_0;
l6AB0935D_0 = keyboard_check(vk_shift);
if (l6AB0935D_0)
{
	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 6D7DA496
	/// @DnDParent : 6AB0935D
	/// @DnDArgument : "gp" "1"
	/// @DnDArgument : "btn" "gp_padl"
	var l6D7DA496_0 = 1;
	var l6D7DA496_1 = gp_padl;
	if(gamepad_is_connected(l6D7DA496_0) && (gamepad_button_check(l6D7DA496_0, l6D7DA496_1) || gamepad_button_check_released(l6D7DA496_0, l6D7DA496_1)))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 79B78DD8
		/// @DnDParent : 6D7DA496
		/// @DnDArgument : "x" "-10"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -10;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 48E86022
		/// @DnDParent : 6D7DA496
		/// @DnDArgument : "value" "-10"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PlayerX"
		global.PlayerX += -10;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 0305ACBF
		/// @DnDParent : 6D7DA496
		/// @DnDArgument : "value" "-10"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PlayerX"
		global.PlayerX += -10;
	}

	/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 3222E44F
	/// @DnDParent : 6AB0935D
	/// @DnDArgument : "gp" "1"
	/// @DnDArgument : "btn" "gp_padr"
	var l3222E44F_0 = 1;
	var l3222E44F_1 = gp_padr;
	if(gamepad_is_connected(l3222E44F_0) && (gamepad_button_check(l3222E44F_0, l3222E44F_1) || gamepad_button_check_released(l3222E44F_0, l3222E44F_1)))
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 4BEF341F
		/// @DnDParent : 3222E44F
		/// @DnDArgument : "x" "10"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += 10;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 54E8197E
		/// @DnDParent : 3222E44F
		/// @DnDArgument : "value" "10"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PlayerX"
		global.PlayerX += 10;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 7035B015
		/// @DnDParent : 3222E44F
		/// @DnDArgument : "value" "10"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PlayerX"
		global.PlayerX += 10;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 6807CEA3
	/// @DnDParent : 6AB0935D
	/// @DnDArgument : "key" "vk_right"
	var l6807CEA3_0;
	l6807CEA3_0 = keyboard_check(vk_right);
	if (l6807CEA3_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 7B4FF514
		/// @DnDParent : 6807CEA3
		/// @DnDArgument : "x" "10"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += 10;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DE59277
		/// @DnDParent : 6807CEA3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "dashing"
		dashing = true;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2E7B7F8E
		/// @DnDParent : 6807CEA3
		/// @DnDArgument : "value" "10"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PlayerX"
		global.PlayerX += 10;
	}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 0D62CD2F
	/// @DnDParent : 6AB0935D
	/// @DnDArgument : "key" "vk_left"
	var l0D62CD2F_0;
	l0D62CD2F_0 = keyboard_check(vk_left);
	if (l0D62CD2F_0)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 2E89859B
		/// @DnDParent : 0D62CD2F
		/// @DnDArgument : "x" "-10"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "0"
		/// @DnDArgument : "y_relative" "1"
		x += -10;
		y += 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7FA1D993
		/// @DnDParent : 0D62CD2F
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "dashing"
		dashing = true;
	
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 3EBAD4E0
		/// @DnDParent : 0D62CD2F
		/// @DnDArgument : "value" "-10"
		/// @DnDArgument : "value_relative" "1"
		/// @DnDArgument : "var" "PlayerX"
		global.PlayerX += -10;
	}
}