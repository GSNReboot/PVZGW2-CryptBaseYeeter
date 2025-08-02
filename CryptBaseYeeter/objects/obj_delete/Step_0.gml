// Converting delete_custom_entry to global (This isn't really nessecary but I'm too lazy to rework everything to be simpler)
global.file_location_custom=delete_custom_entry;

// Debug
debug_input_check = keyboard_check(vk_anykey);
debug_input = keyboard_lastchar;

// Input Checks
if (delete_custom == 0){
	if (delete_custom_check == 0 && delete_steam == 0 && keyboard_check_released(ord("O"))){
		global.file_location=global.file_location_origin;
		delete_origin=1;
	}
	else if (delete_custom_check == 0 && delete_origin == 0 && keyboard_check_released(ord("S"))){
		global.file_location=global.file_location_steam;
		delete_steam=1;
	}
}

if (delete_custom_check == 0 && delete_steam == 0 && delete_origin == 0 && keyboard_check_released(ord("C"))){
	delete_custom_check = 1;
}

// Custom Directory Typing Handler
if (delete_custom_check = 1){
	if (_ini_check = 0){
		ini_open("options.ini");
		delete_custom_entry=ini_read_string("Custom Directory","delete_custom_entry","");
		ini_close();
		_ini_check = 1;
	}
	
	var _key = keyboard_lastkey;
	if (_key != vk_nokey && _key != vk_backspace && _key != vk_enter){
	    delete_custom_entry += keyboard_string;
	    keyboard_string = "";
	}


	if (keyboard_check_pressed(vk_backspace) && string_length(delete_custom_entry) > 0){
	    delete_custom_entry = string_delete(delete_custom_entry, string_length(delete_custom_entry), 1);
	}
	
	if (keyboard_check(vk_control) && keyboard_check(ord("V")) && clipboard_has_text()){
		delete_custom_entry = clipboard_get_text();
	}


	if (keyboard_check_pressed(vk_enter)){
		global.file_location=global.file_location_custom;
        ini_open("options.ini");
        ini_write_string("Custom Directory","delete_custom_entry",delete_custom_entry);
        ini_close();
	    delete_custom=1;
		_ini_check = 2;
		delete_custom_check=2;
	    }
}

// Execute scr_delete() upon proper check
if (delete_steam || delete_origin || delete_custom = 1){
    global.file_location=string_replace_all(global.file_location,"\\","/");
	scr_delete();
}

// More checks
if (delete_custom_check == 1 || delete_custom_check == 2){
	delete_steam = 0;
	delete_origin = 0;
}
if (delete_steam == 1){
	delete_origin = 0;
	delete_custom_check = 0;
	delete_custom = 0;
}
if (delete_origin == 1){
	delete_steam = 0;
	delete_custom_check = 0;
	delete_custom = 0;
}

// Restart the app and cancel current task
if (keyboard_check_released(vk_escape)){
	game_restart();
}