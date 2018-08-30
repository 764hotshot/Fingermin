if(IsHit == false)
{
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	IsHit = true;

	x = xstart;
	y = ystart;

	global.PlayerX = 480;
}