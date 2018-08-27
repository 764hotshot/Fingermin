/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 798B1FAB
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 590739F1
/// @DnDArgument : "var" "IsHit"
/// @DnDArgument : "value" "true"
if(IsHit == true)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 157F4689
	/// @DnDParent : 590739F1
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "InvincibleFrames"
	InvincibleFrames += 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4228C83F
/// @DnDArgument : "var" "InvincibleFrames"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "60"
if(InvincibleFrames >= 60)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44065A7A
	/// @DnDParent : 4228C83F
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "IsHit"
	IsHit = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 378FF333
	/// @DnDParent : 4228C83F
	/// @DnDArgument : "var" "InvincibleFrames"
	InvincibleFrames = 0;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1D1969B9
/// @DnDArgument : "script" "PlayerMove"
/// @DnDSaveInfo : "script" "558ea833-d3a9-400c-b9b7-d5ec33e129b9"
script_execute(PlayerMove);

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 505F56BB
/// @DnDArgument : "gp" "1"
/// @DnDArgument : "btn" "gp_padl"
var l505F56BB_0 = 1;
var l505F56BB_1 = gp_padl;
if(gamepad_is_connected(l505F56BB_0) && (gamepad_button_check(l505F56BB_0, l505F56BB_1) || gamepad_button_check_released(l505F56BB_0, l505F56BB_1)))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 12EFFA32
	/// @DnDParent : 505F56BB
	/// @DnDArgument : "x" "-5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += -5;
	y += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 320B77F8
	/// @DnDParent : 505F56BB
	/// @DnDArgument : "value" "-5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX += -5;
}

/// @DnDAction : YoYo Games.Gamepad.If_Gamepad_Button_Down
/// @DnDVersion : 1.1
/// @DnDHash : 1FDC51D8
/// @DnDArgument : "gp" "1"
/// @DnDArgument : "btn" "gp_padr"
var l1FDC51D8_0 = 1;
var l1FDC51D8_1 = gp_padr;
if(gamepad_is_connected(l1FDC51D8_0) && (gamepad_button_check(l1FDC51D8_0, l1FDC51D8_1) || gamepad_button_check_released(l1FDC51D8_0, l1FDC51D8_1)))
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 0FDAC5BA
	/// @DnDParent : 1FDC51D8
	/// @DnDArgument : "x" "5"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "0"
	/// @DnDArgument : "y_relative" "1"
	x += 5;
	y += 0;

	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 59E9B6BC
	/// @DnDParent : 1FDC51D8
	/// @DnDArgument : "value" "5"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "PlayerX"
	global.PlayerX += 5;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 17757B35
/// @DnDArgument : "script" "ScreenWrap"
/// @DnDSaveInfo : "script" "ff937d81-4150-4321-846d-7e89f0cb5ece"
script_execute(ScreenWrap);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 09A62E49
/// @DnDArgument : "key" "vk_shift"
/// @DnDArgument : "not" "1"
var l09A62E49_0;
l09A62E49_0 = keyboard_check(vk_shift);
if (!l09A62E49_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7A1BA34E
	/// @DnDParent : 09A62E49
	/// @DnDArgument : "var" "IsHit"
	/// @DnDArgument : "value" "false"
	if(IsHit == false)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11C5C903
		/// @DnDParent : 7A1BA34E
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "var" "dashing"
		dashing = false;
	}
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 36A33EC6
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 0)
{
	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 38649A6A
	/// @DnDParent : 36A33EC6
	/// @DnDArgument : "room" "LoseScreen_Room"
	/// @DnDSaveInfo : "room" "b7771e20-9295-4c88-9ec1-e4e7b4a6d5a9"
	room_goto(LoseScreen_Room);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 605A0803
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "10"
if(cooldown >= 10)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 611944B4
	/// @DnDParent : 605A0803
	/// @DnDArgument : "var" "dashing"
	/// @DnDArgument : "value" "false"
	if(dashing == false)
	{
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 04836D48
		/// @DnDParent : 611944B4
		var l04836D48_0;
		l04836D48_0 = keyboard_check(vk_space);
		if (l04836D48_0)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6BD4A9A7
			/// @DnDParent : 04836D48
			/// @DnDArgument : "xpos" "global.PlayerX"
			/// @DnDArgument : "ypos" "650"
			/// @DnDArgument : "objectid" "obj_Shot"
			/// @DnDArgument : "layer" ""Shot_Layer""
			/// @DnDSaveInfo : "objectid" "cdf7c64d-2710-4274-952d-fbe80e1d7595"
			instance_create_layer(global.PlayerX, 650, "Shot_Layer", obj_Shot);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 77122AC7
			/// @DnDParent : 04836D48
			/// @DnDArgument : "var" "cooldown"
			cooldown = 0;
		}
	}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 74104C2F
/// @DnDDisabled : 1
/// @DnDArgument : "x" "1000"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "sprite" "spr_PlayerIdle"
/// @DnDSaveInfo : "sprite" "f6590f37-3495-43f9-beff-ee2970aab985"


/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 3AF1B125
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "4"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 4)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_At_Position
	/// @DnDVersion : 1
	/// @DnDHash : 28D7F9D5
	/// @DnDApplyTo : 5b050a1c-6917-4080-8e65-ce016449f759
	/// @DnDParent : 3AF1B125
	/// @DnDArgument : "xpos" "280"
	/// @DnDArgument : "ypos" "735"
	with(obj_Hearts) position_destroy(280, 735);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 1AFF9904
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "3"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 3)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_At_Position
	/// @DnDVersion : 1
	/// @DnDHash : 318D2DE6
	/// @DnDApplyTo : 5b050a1c-6917-4080-8e65-ce016449f759
	/// @DnDParent : 1AFF9904
	/// @DnDArgument : "xpos" "220"
	/// @DnDArgument : "ypos" "735"
	with(obj_Hearts) position_destroy(220, 735);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 6479991A
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "2"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 2)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_At_Position
	/// @DnDVersion : 1
	/// @DnDHash : 05129336
	/// @DnDApplyTo : 5b050a1c-6917-4080-8e65-ce016449f759
	/// @DnDParent : 6479991A
	/// @DnDArgument : "xpos" "160"
	/// @DnDArgument : "ypos" "735"
	with(obj_Hearts) position_destroy(160, 735);
}

/// @DnDAction : YoYo Games.Instance Variables.If_Lives
/// @DnDVersion : 1
/// @DnDHash : 2D2791DF
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "1"
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
if(__dnd_lives <= 1)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_At_Position
	/// @DnDVersion : 1
	/// @DnDHash : 377E9DB0
	/// @DnDApplyTo : 5b050a1c-6917-4080-8e65-ce016449f759
	/// @DnDParent : 2D2791DF
	/// @DnDArgument : "xpos" "100"
	/// @DnDArgument : "ypos" "735"
	with(obj_Hearts) position_destroy(100, 735);
}