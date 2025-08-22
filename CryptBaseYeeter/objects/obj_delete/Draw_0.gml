/// Old Draw Event for classic_mode
if (classic_mode){
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
if (debug_check = " - DEBUG"){
	draw_text_eq(0,0, debug_input, Font2, c_white);
	draw_text_eq(0,50, debug_input_check, Font2, c_white);
}
}

/// New Draw Event
else{
	// Begin Draw Event
	if (theme == "flame"){
		draw_sprite(spr_Theme_Flame,0,0,0-32);
	}
	else if (theme == "red"){
		draw_sprite(spr_Theme_Red,0,0,0-32);
	}
	else if (theme == "blue"){
		draw_sprite(spr_Theme_Blue,0,0,0-32);
	}
	else if (theme == "green"){
		draw_sprite(spr_Theme_Green,0,0,0-32);
	}
	else if (theme == "magenta"){
		draw_sprite(spr_Theme_Magenta,0,0,0-32);
	}
	else{
		draw_sprite(spr_Theme_Default,0,0,0-32);
	}
	
	draw_text_eq(28+12,8+12,"File       Edit      Settings",OpenSans_siz16,c_white);
	draw_text_eq(631,48,"Mode Picker",OpenSans_siz16,c_white);
	draw_text_eq(64,297,display_text,OpenSans_siz16,c_white);
	
	if (delete_steam == 1 || delete_origin == 1 || delete_custom == 1){
		draw_text_eq(global.top_border_x,global.top_border_y,"Deleting from",OpenSans_siz24,c_white);
		draw_text_eq(global.top_border_x,global.top_border_y,"\n\n"+"\""+global.file_location+global.file_name+"\""+dots,OpenSansCondensed_siz24,c_white);
		draw_text_eq(global.stop_x,global.stop_y,"Stop targeting",OpenSans_siz24,c_white);
	}
	else if (delete_custom_check == 1){
		draw_text_eq(global.top_border_x,global.top_border_y,"Type your PVZGW2 Installation Diretory",OpenSans_siz24,c_white);
		draw_text_eq(global.top_border_x,global.top_border_y,"\n\n" + "\"" + delete_custom_entry + "/\"",OpenSansCondensed_siz24,c_white);
		draw_text_eq(global.top_border_x,global.top_border_y,"\n\n\n\nPress ENTER to confirm",OpenSans_siz24,c_white);
	}
	else{
		draw_text_eq(59-18,696,tip,OpenSansCondensed_siz16,c_white);
		draw_text_eq(global.top_box_x,global.top_box_y,"Directory Sandbox",OpenSans_siz24,c_white);
		draw_text_eq(global.mid_box_x,global.mid_box_y,"Preferences",OpenSans_siz24,c_white);
		draw_text_eq(global.bottom_box_x,global.bottom_box_y,"Exit",OpenSans_siz24,c_white);
		
		if (global.mode == "preferences"){
		draw_text_eq(global.top_border_x,global.top_border_y,"BACKGROUND THEME",OpenSans_siz24,c_white);
		
		if (theme == "default"){
		draw_text_eq(global.top_border_x,global.top_border_y,"\nDefault",OpenSansCondensed_siz24,c_white);
		}
		else if (theme == "flame"){
		draw_text_eq(global.top_border_x,global.top_border_y,"\nFlaming Hot",OpenSansCondensed_siz24,c_white);
		}
		else if (theme == "red"){
		draw_text_eq(global.top_border_x,global.top_border_y,"\nRed",OpenSansCondensed_siz24,c_white);
		}
		else if (theme == "blue"){
		draw_text_eq(global.top_border_x,global.top_border_y,"\nBlue",OpenSansCondensed_siz24,c_white);
		}
		else if (theme == "green"){
		draw_text_eq(global.top_border_x,global.top_border_y,"\nGreen",OpenSansCondensed_siz24,c_white);
		}
		else if (theme == "magenta"){
		draw_text_eq(global.top_border_x,global.top_border_y,"\nMagenta",OpenSansCondensed_siz24,c_white);
		}
		}
		else if (global.log_mode){
		draw_text_eq(global.top_border_x,global.top_border_y,global.log_report,OpenSansCondensed_siz24,c_white);
		}
		else if (global.mode == "sandbox"){
		draw_text_eq(global.top_border_x,global.top_border_y,"Steam Directory",OpenSans_siz24,c_white);
		draw_text_eq(global.top_border_x,global.topMid_border_y,"Origin Directory",OpenSans_siz24,c_white);
		draw_text_eq(global.top_border_x,global.bottomMid_border_y,"Custom Directory",OpenSans_siz24,c_white);
	    }
    }
}