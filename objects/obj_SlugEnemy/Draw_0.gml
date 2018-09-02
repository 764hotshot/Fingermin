draw_self()

if(!variable_instance_exists(id, "health")) health = 0;
draw_healthbar(x + -70, y + -100, x + 70, y + -75, health, $FF676767, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF676767>>24) != 0), (($FF000000>>24) != 0));