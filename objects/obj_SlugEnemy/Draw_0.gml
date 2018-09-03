draw_self()

if(!variable_instance_exists(id, "hp")) hp = 0;
draw_healthbar(x + -50, y + -95, x + 50, y + -75, hp, $FF676767, $FF0000FF & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF676767>>24) != 0), (($FF000000>>24) != 0));