delay++
if (mouse_check_button(mb_left)) if (delay >= 10){
	with (instance_create_layer(x, y, "Shot", obj_Shurican)){
	vsp = -15
	hsp = sign(obj_player1Land.image_xscale) * 5
	}
	delay = 0;
	}