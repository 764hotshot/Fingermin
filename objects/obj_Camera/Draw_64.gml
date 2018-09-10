if global.TwoPlayer{
	draw_set_halign(fa_center);
	draw_text(500, 25, "camX " + string(camX))
	draw_text(500, 50, "camY " + string(camY))
	draw_text(500, 75, "camW " + string(camW))
	draw_text(500, 100, "camH " + string(camH))
	draw_text(500, 125, "camH " + string(camera_get_view_height(cam)))
	draw_text(500, 150, "ltPlayer.y " + string(ltPlayer.y))
	draw_text(500, 175, "rtPlayer.y " + string(rtPlayer.y))
	draw_text(500, 200, "ltPlayer.x " + string(ltPlayer.x))
	draw_text(500, 225, "rtPlayer.x " + string(rtPlayer.x))
	draw_text(500, 250, "Room Height: " + string(room_height))
	draw_text(500, 275, "defaultCamH: " + string(defaultCamH))
}
