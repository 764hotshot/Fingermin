if gamepad_button_check(4, gp_face3){
	global.P2HasGun = true;
	instance_create_layer(obj_player2Land.x, obj_player2Land.y, "Gun", obj_GunLandP2)
	if (global.P2HasSpear == true){ instance_create_layer(x, y, "Spear", obj_SpearPickUp); with (obj_SpearP2) instance_destroy();}
	instance_destroy();
}