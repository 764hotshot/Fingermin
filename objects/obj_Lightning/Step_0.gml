LightningDestroyTimer += 1;

if(LightningDestroyTimer > 120)
{
	instance_destroy();

	LightningDestroyTimer = 0;
}