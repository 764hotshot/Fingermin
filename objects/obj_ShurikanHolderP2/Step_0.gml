delay++

var controllerh = gamepad_axis_value(4, gp_axisrh);
var controllerv = gamepad_axis_value(4, gp_axisrv);
if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
{
	controllerrange = point_direction(0, 0, controllerh, controllerv);
}



if (gamepad_button_check(4, gp_shoulderrb)) if (delay >= 10){ 
	with (instance_create_layer(x, y, "Shot", obj_Shurikan)){
	vsp = -15
	if (controllerrange != 0) hsp = sign(controllerrange) * 5;
	else hsp = sign(obj_player2Land.image_xscale) * 5;
	}
	delay = 0;
	
}