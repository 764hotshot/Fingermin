image_angle = point_direction(x, y, mouse_x, mouse_y);;

if image_angle > 90 && image_angle < 270 image_yscale = -1
else image_yscale = 1

shootWait ++

recoil = max(0, -1)

if shootWait >= 6
{
	if mouse_check_button(mb_left)
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


