var controllerh = gamepad_axis_value(4, gp_axisrh);
var controllerv = gamepad_axis_value(4, gp_axisrv);
if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
{
	controllerrange = point_direction(0, 0, controllerh, controllerv);
}

image_angle = controllerrange;

if image_angle > 90 && image_angle < 270 image_yscale = -1;
else image_yscale = 1;

