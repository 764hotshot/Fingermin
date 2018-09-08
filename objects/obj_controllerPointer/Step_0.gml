if global.TwoPlayer = 1
{
	x = obj_player2Land.x
	y = obj_player2Land.y

	var controllerh = gamepad_axis_value(4, gp_axisrh);
	var controllerv = gamepad_axis_value(4, gp_axisrv);
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
	{
		visible = true;
		controllerrange = point_direction(0, 0, controllerh, controllerv);
	}
	else visible = false;
	image_angle = controllerrange;
	if image_angle > 90 && image_angle < 270 image_yscale = -1;
	else image_yscale = 1;
}	
else instance_destroy()