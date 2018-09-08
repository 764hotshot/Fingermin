if (place_meeting(x, y, obj_wall)) {
	hp -= -1;
	with (obj_HealthBar) BossHP += -1;
}