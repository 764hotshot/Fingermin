/// @description Set Up Camera
camY = camera_get_view_y(cam)
camX = camera_get_view_x(cam)
camW = camera_get_view_width(cam)
camH = camera_get_view_height(cam)
Yborder = camera_get_view_border_y(cam)
Xborder = camera_get_view_border_x(cam)
view_w_half = camW * 0.5;
view_h_half = camH * 0.5;
Resize = 0;
xTo = xstart
yTo = ystart
#macro AR (1024/768)