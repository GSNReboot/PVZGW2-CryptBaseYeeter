// Begin Draw Event
draw_rectangle_eq(c_col1,0,0,window_get_width()*99,window_get_height()*99,0);
draw_sprite_ext(spr_CryptBaseYeeter_Logo,0,25,140-70,0.125,0.125,0,c_white,1);
draw_rectangle_eq(c_col2,1255,700-25,25,308-30,0);
draw_text_eq(50,625, global.tool_ver + debug_check, Font2, c_gray);

// Display text
if (delete_steam = 1){
draw_text_eq(50,300, "Deleting from", Font1, c_silver);
draw_text_eq(50,350,global.file_location + global.file_name + "'" + dots, Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font1, c_silver);
}
else if (delete_origin = 1){
draw_text_eq(50,300, "Deleting from", Font1, c_silver);
draw_text_eq(50,350,global.file_location + global.file_name + "'" + dots, Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font1, c_silver);
}
else if (delete_custom_check = 1 && delete_custom = 0){
draw_text_eq(50,300,"Type your PVZGW2 Installation Directory", Font1, c_silver);
draw_text_eq(50,350, delete_custom_entry + "/", Font2, c_white);
draw_text_eq(50,400, "Press CTRL + V to replace the current input with your clipboard", Font1, c_silver);
draw_text_eq(50,450, "Press ENTER to proceed", Font1, c_silver);
draw_text_eq(50,500, "Press ESC to cancel", Font1, c_silver);
}
else if (delete_custom_check = 2 && delete_custom = 1){
draw_text_eq(50,300, "Deleting from", Font1, c_silver);
draw_text_eq(50,350,"'" + global.file_location + global.file_name + "'" + dots, Font2, c_white);
draw_text_eq(50,500, "Press ESC to cancel", Font1, c_silver);
}
else{
draw_text_eq(50,300,"Press S to select the STEAM DIRECTORY OF PVZGW2", Font1, c_white);
draw_text_eq(50,350,"Press O to select the ORIGIN DIRECTORY OF PVZGW2", Font1, c_white);
draw_text_eq(50,400, "Press C to manually type your PVZGW2 DIRECTORY", Font1, c_white);
}

// Debug Mode
if (debug_mode){
	draw_text_eq(0,0, debug_input, Font2, c_white);
	draw_text_eq(0,50, debug_input_check, Font2, c_white);

}