/// @description Update Camera

// Reset Variables

Xborder = camera_get_view_border_x(cam)
Yborder = camera_get_view_border_y(cam)
camY = camera_get_view_y(cam)
camX = camera_get_view_x(cam)
camW = camera_get_view_width(cam)
camH = camera_get_view_height(cam)
view_w_half = camW * 0.5;
view_h_half = camH * 0.5;
Resize = 1;

if global.TwoPlayer = true {	
	if (obj_player1Land.x > obj_player2Land.x){
		ltPlayer = obj_player2Land;
		rtPlayer = obj_player1Land;
	}
	
	else {
		ltPlayer = obj_player1Land;
		rtPlayer = obj_player2Land;
	}
}
else{ 
	ltPlayer = obj_player1Land;
}

//camera_set_view_target(cam, ltPlayer)

//if (instance_exists(ltPlayer))
//{
//	xTo = ltPlayer.x;
//	yTo = ltPlayer.y;
//}

//xTo = obj_player1Land.x
//yTo = obj_player1Land.y


// Update Destination

//x = clamp(xTo, view_w_half, room_width - view_w_half)
//y = clamp(yTo, view_h_half, room_height - view_h_half)

//x += (ltPlayer.x - x) / 25;
//y += (ltPlayer.y - y) / 25;



camX = clamp(camX, 0, room_width - camW)
camY = clamp(camY, room_height - camH, 0)

//MATH
if global.TwoPlayer{
camW = (rtPlayer.x + Xborder) - (ltPlayer.x - Xborder)
camX = max(0, (ltPlayer.x - Xborder))
camH = camW/AR
}
// Zoom Out To Players

//if x > obj_player1Land x = obj_player1Land - 50;
//if y > obj_player1Land y = obj_player1Land - 50;
//if (camW < rtPlayer.x) Resize = rtPlayer.x - camW + 50;
//if (camH < rtPlayer.y) Resize = rtPlayer.y - camH + 50;

// Update Camera View
if (global.TwoPlayer = true){
	//if (camW < rtPlayer or camH < rtPlayer) camera_set_view_size(cam, camW * AR / Resize, camH * Resize * AR);
	camera_set_view_size(cam, camW, camH);
	if (camW < 1024 or camH < 768) camera_set_view_size(cam, 1024, 768);
	camera_set_view_pos(cam, camX, camY - 50);
}


if (global.TwoPlayer = false){ camera_set_view_target(cam, obj_player1Land); camera_set_view_border(cam, view_w_half, view_h_half)}


