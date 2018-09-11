var file = file_text_open_read(SAVEFILE);
var target = file_text_read_real(file);
//game_load(file)
file_text_close(file);
room_goto(target);