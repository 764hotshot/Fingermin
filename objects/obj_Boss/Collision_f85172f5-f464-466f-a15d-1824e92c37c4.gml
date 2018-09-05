if(!variable_instance_exists(id, "health")) health = 0;
health += -1;

with (obj_shotLand) instance_destroy()

global.BossHP += -1;