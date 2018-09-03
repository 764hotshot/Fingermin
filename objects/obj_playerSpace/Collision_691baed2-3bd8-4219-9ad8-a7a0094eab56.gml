if(IsHit == false)
{
	if(!variable_instance_exists(id, "lives")) lives = 0;
	lives += -1;

	IsHit = true;

	x = xstart;
	y = ystart;

	global.PlayerX = 480;
}