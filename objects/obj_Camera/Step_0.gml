/// @description Update Camera

// Reset Variables

camY = camera_get_view_y(cam)
camX = camera_get_view_x(cam)
camW = camera_get_view_width(cam)
camH = camera_get_view_height(cam)
view_w_half = camW * 0.5;
view_h_half = camH * 0.5;

if global.TwoPlayer = true {	
	if (obj_player1Land.x > obj_player2Land.x){
		follow = obj_player2Land;
		scaleFollow = obj_player1Land;
	}
	
	else {
		follow = obj_player1Land;
		scaleFollow = obj_player2Land;
	}
}
else{ 
	scaleFollow = obj_player2Land;
	follow = obj_player1Land;
}

camera_set_view_target(cam, follow)

//if (instance_exists(follow))
//{
//	xTo = follow.x;
//	yTo = follow.y;
//}

//xTo = obj_player1Land.x
//yTo = obj_player1Land.y


// Update Destination

//x = clamp(xTo, view_w_half, room_width - view_w_half)
//y = clamp(yTo, view_h_half, room_height - view_h_half)

//x += (follow.x - x) / 25;
//y += (follow.y - y) / 25;


x = clamp(x, view_w_half, room_width - view_w_half)
y = clamp(y, view_h_half, room_height - view_h_half)

// Zoom Out To Players

//if x > obj_player1Land x = obj_player1Land - 50;
//if y > obj_player1Land y = obj_player1Land - 50;
if camW < scaleFollow Resize += scaleFollow + 50;
if camH < scaleFollow Resize += scaleFollow + 50;

// Update Camera View
if (global.TwoPlayer = true) camera_set_view_size(cam, camW * AR / Resize, camH * Resize * AR);
camera_set_view_pos(cam, x + view_w_half, y + view_h_half);



Resize = 1;