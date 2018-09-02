image_angle = point_direction(x, y, mouse_x, mouse_y);;

if image_angle > 90 && image_angle < 270 image_yscale = -1
else image_yscale = 1

shootWait ++

if shootWait >= 6
{
	if mouse_check_button(mb_left)
	{
		instance_create_layer(x, y, "Shot", obj_shotLand);
		shootWait = 0
	}
}