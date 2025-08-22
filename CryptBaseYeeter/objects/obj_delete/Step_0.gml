// Convert delete_custom_entry to global
global.file_location_custom = delete_custom_entry;

// Debug
window_set_caption(global.tool_ver + debug_check);
debug_input_check = keyboard_check(vk_anykey);
debug_input = keyboard_lastchar;

if (debug_mode){
	debug_check = " - DEBUG";
}

// Dot anim
dots_switch_delay -= 1;

if (dots == "." && dots_switch_delay <= 0){
	dots = "..";
	dots_switch_delay = dots_switch_delay_init;
}
if (dots == ".." && dots_switch_delay <= 0){
	dots = "...";
	dots_switch_delay = dots_switch_delay_init;
}
if (dots == "..." && dots_switch_delay <= 0){
	dots =".";
	dots_switch_delay = dots_switch_delay_init;
}

// Input Checks (Old System)
if (classic_mode){
if (delete_custom == 0){
	if (delete_custom_check == 0 && delete_steam == 0 && keyboard_check_released(ord("O"))){
		global.file_location = global.file_location_origin;
		delete_origin = 1;
	}
	else if (delete_custom_check == 0 && delete_origin == 0 && keyboard_check_released(ord("S"))){
		global.file_location = global.file_location_steam;
		delete_steam = 1;
	}
}

if (delete_custom_check == 0 && delete_steam == 0 && delete_origin == 0 && keyboard_check_released(ord("C"))){
	delete_custom_check = 1;
}
}
// Custom Directory Typing Handler
if (delete_custom_check == 1){
	display_text = "Steam Directory";
	if (_ini_check == 0){
		ini_open("options.ini");
		delete_custom_entry = ini_read_string("Custom Directory","delete_custom_entry","");
		ini_close();
		keyboard_string = "";
		_ini_check = 1;
	}
	
	var _key = keyboard_lastkey;
	
	if (_key != vk_enter){
	    delete_custom_entry += keyboard_string;
		keyboard_string = "";
	}

	if (keyboard_check_pressed(vk_backspace) && string_length(delete_custom_entry) > 0){
	    delete_custom_entry = string_delete(delete_custom_entry, string_length(delete_custom_entry), 1);
	}
	if (keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboard_has_text() && delete_custom_entry != clipboard_get_text()){
		delete_custom_entry = clipboard_get_text();
	}
	if (keyboard_check_pressed(vk_enter)){
		global.file_location = global.file_location_custom;
        ini_open("options.ini");
        ini_write_string("Custom Directory","delete_custom_entry",delete_custom_entry);
        ini_close();
	    delete_custom = 1;
		_ini_check = 2;
		delete_custom_check = 2;
	    }
}

// Execute scr_delete() upon proper check
if (delete_steam == 1 || delete_origin == 1 || delete_custom == 1){
	instance_activate_layer(5);
    global.file_location = string_replace_all(global.file_location,"\\","/");
	scr_delete();
}

// More checks
if (delete_custom_check == 1 || delete_custom_check == 2){
	display_text = "Custom Directory";
	delete_steam = 0;
	delete_origin = 0;
}
if (delete_steam == 1){
	display_text = "Steam Directory";
	delete_origin = 0;
	delete_custom_check = 0;
	delete_custom = 0;
}
if (delete_origin == 1){
	display_text = "Origin Directory";
	delete_steam = 0;
	delete_custom_check = 0;
	delete_custom = 0;
}

// More classic mode checks
if (classic_mode = true){
	if (keyboard_check_released(vk_escape)){
		game_restart();
    }

    instance_deactivate_object(obj_button);
}

// Theme Mode Name
if (global.mode == "preferences"){
	display_text = "Preferences";
}

// Disable layers in specific events
if (global.log_mode){
	instance_deactivate_layer(1);
}

// Logging
ini_log();