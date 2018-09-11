/// @desc
//direction = point_direction(x, y, obj_mousePointer.x, obj_mousePointer.y)
image_angle = point_direction(x, y, obj_mousePointer.x, obj_mousePointer.y)

if (mouse_check_button(mb_left) && shooting = 0){ 
	if (comeback == 0) speed = 15;
	shooting = 1;
	direction = point_direction(x, y, obj_mousePointer.x, obj_mousePointer.y);
	//gravity_direction = point_direction(x, y, obj_player1Land.x, obj_player1Land.y)
	//gravity = 0.3
	}
//if (shooting = 1) gravity_direction = point_direction(x, y, obj_player1Land.x, obj_player1Land.y);
//else { speed = 0; gravity = 0 }
//speed = min(speed, 10)
if (comeback = 1){
	direction = point_direction(x, y, obj_player1Land.x, obj_player1Land.y);
	speed += 0.2
	}
if (shooting == 1 && comeback == 0) speed -= 0.2;
if (speed <= 1) comeback = 1;