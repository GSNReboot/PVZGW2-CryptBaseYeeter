// Begin Draw Event
draw_self();
draw_set_font(Font2);// <- Just to make sure no issues occur when refreshing/restarting
draw_sprite_ext(CryptBaseYeeter_Logo,0,50,155,0.125,0.125,0,c_white,1);

// Display text
if (delete_steam = 1){
draw_text_eq(50,350,"Deleting from " + "'" + global.file_location + global.file_name + "'", Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font2, c_white);
}
else if (delete_origin = 1){
draw_text_eq(50,350,"Deleting from " + "'" + global.file_location + global.file_name + "'", Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font2, c_white);
}
else if (delete_custom_check = 1 && delete_custom = 0){
draw_text_eq(50,300,"Type your PVZGW2 Installation Directory", Font2, c_white);
draw_text_eq(50,350, delete_custom_entry + "/", Font2, c_white);
draw_text_eq(50,450, "Press CTRL + V to replace the current input with your clipboard", Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font2, c_white);
}
else if (delete_custom_check = 2 && delete_custom = 1){
draw_text_eq(50,300, "Deleting from", Font2, c_white);
draw_text_eq(50,350,"'" + global.file_location + global.file_name + "'", Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font2, c_white);
}
else{
draw_text_eq(50,300,"Press S to select the STEAM DIRECTORY OF PVZGW2", Font2, c_white);
draw_text_eq(50,350,"Press O to select the ORIGIN DIRECTORY OF PVZGW2", Font2, c_white);
draw_text_eq(50,400, "Press C to manually type your PVZGW2 DIRECTORY", Font2, c_white);
}
draw_text_eq(50,650, global.tool_ver, Font2, c_white);

// Debug Mode
if (debug_mode){
	draw_text_eq(0,0, debug_input, Font2, c_white);
	draw_text_eq(0,50, debug_input_check, Font2, c_white);

}