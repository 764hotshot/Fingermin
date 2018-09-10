if gamepad_button_check(4, gp_face3){
	global.P2HasShurikan = true;
	instance_create_layer(obj_player1Land.x, obj_player1Land.y, "Gun", obj_ShurikanHolderP2)
	if (global.P2HasSpear == true){ instance_create_layer(x, y, "Spear", obj_SpearPickUp); with (obj_SpearP2) instance_destroy();}
	instance_destroy();
	if (global.P2HasGun = true){ instance_create_layer(x, y, "Gun", obj_GunPickUp); with (obj_GunLandP2) instance_destroy();}
	instance_destroy();
}