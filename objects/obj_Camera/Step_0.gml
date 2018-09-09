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
	
	if (obj_player1Land.y < obj_player2Land.y){
		dnPlayer = obj_player2Land;
		upPlayer = obj_player1Land;
	}
	
	else {
		dnPlayer = obj_player1Land;
		upPlayer = obj_player2Land;
	}
}
else{ 
	ltPlayer = obj_player1Land;
}

camX = clamp(camX, 0, room_width - defaultCamW)
camY = clamp(camY, 0, room_height - defaultCamH)

//MATH
if global.TwoPlayer{
	ltPlayerX = ltPlayer.x
	ltPlayerY = ltPlayer.y
	rtPlayerX = rtPlayer.x
	rtPlayerY = rtPlayer.y
	dnPlayerY = dnPlayer.y
	upPlayerY = upPlayer.y
	
	camW = (rtPlayerX + Xborder) - (ltPlayerX - Xborder)
	camX = max(0, (ltPlayerX - Xborder))
	camY = max(0, dnPlayerY - defaultCamH)
	camH = max(dnPlayerY + Yborder, upPlayerY + Yborder) - camY

	oldCamH = camH
	oldCamW = camW
	varAR = AR
	varDefCamH = defaultCamH
	varDefCamW = defaultCamW
	camH = max(oldCamH, oldCamW/AR, defaultCamH)
	camW = max(oldCamW, oldCamH*AR, defaultCamW)

	// Update Camera View
	camera_set_view_size(cam, camW, camH);
	camera_set_view_pos(cam, camX, camY);

}

if (global.TwoPlayer = false){ camera_set_view_target(cam, obj_player1Land); camera_set_view_border(cam, view_w_half, view_h_half)}


