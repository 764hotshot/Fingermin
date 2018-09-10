if keyboard_check(ord("E")){
	global.P1HasShurikan = true;
	instance_create_layer(obj_player1Land.x, obj_player1Land.y, "Gun", obj_ShurikanHolderP1)
	if (global.P1HasSpear == true){ instance_create_layer(x, y, "Spear", obj_SpearPickUp); with (obj_SpearP1) instance_destroy();}
	instance_destroy();
	if (global.P1HasGun = true){ instance_create_layer(x, y, "Gun", obj_GunPickUp); with (obj_GunLandP1) instance_destroy();}
	instance_destroy();
}