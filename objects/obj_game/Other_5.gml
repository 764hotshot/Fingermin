/// @desc Auto Save

// Overwrite Old Save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);

// Create new save
var file;
file = file_text_open_write(SAVEFILE)
file_text_write_real(file, room);
file_text_writeln(file);
file_text_write_real(file, global.P1HasGun);
file_text_writeln(file);
file_text_write_real(file, global.P1HasShurikan);
file_text_writeln(file);
file_text_write_real(file, global.P1HasSpear);
file_text_writeln(file);
file_text_write_real(file, global.TwoPlayer);
file_text_writeln(file);
if global.TwoPlayer {
	file_text_write_real(file, global.P2HasGun);
	file_text_writeln(file);
	file_text_write_real(file, global.P2HasShurikan);
	file_text_writeln(file);
	file_text_write_real(file, global.P2HasSpear);
	file_text_writeln(file);
}
file_text_close(file);

with (obj_Camera) instance_destroy()