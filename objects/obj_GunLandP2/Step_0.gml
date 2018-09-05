var controllerh = gamepad_axis_value(4, gp_axisrh);
var controllerv = gamepad_axis_value(4, gp_axisrv);
if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
{
	controllerrange = point_direction(0, 0, controllerh, controllerv);
}

image_angle = controllerrange;

if image_angle > 90 && image_angle < 270 image_yscale = -1;
else image_yscale = 1;

shootWait ++;

recoil = max(0, -1);

if shootWait >= 6
{
	if gamepad_button_check(4, gp_shoulderrb)
	{
		with (instance_create_layer(x, y, "Shot", obj_shotLand))
		{
			speed = 25
			direction = other.image_angle + random_range(-3, 3)
			image_angle = direction
		}
		shootWait = 0
		recoil = 7
	}
}

x -= lengthdir_x(recoil, image_angle)
y -= lengthdir_y(recoil, image_angle)


