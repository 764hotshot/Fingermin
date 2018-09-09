if (place_meeting(x, y + 700, obj_wall))
{
	while (!place_meeting(x, y + 1,obj_wall))
	{
		y = y + 1;
	}
}
else y = 700