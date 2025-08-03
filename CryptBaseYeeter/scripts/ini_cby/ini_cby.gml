function ini_cby(mode){
	// 1 == Read
	// 2 == Write
	// 0 == Both
	if (mode == 1){
	ini_open("CryptBaseYeeter.cby");
	global.file_name = ini_read_string("CBY ini VD", "file_name", "/CryptBase.dll");
    global.file_location_steam = ini_read_string("CBY ini VD", "file_location_steam", "C:/Program Files (x86)/Steam/steamapps/common/PVZGW2");
    global.file_location_origin = ini_read_string("CBY ini VD", "file_location_origin", "C:/Program Files (x86)/Origin Games/Plants vs Zombies Garden Warfare 2");
    global.tool_ver = ini_read_string("CBY ini VD", "tool_ver", "PVZGW2 - CryptBaseYeeter | v1.3");
    c_col1 = ini_read_real("CBY ini VD", "c_col1", $434343);
    c_col2 = ini_read_real("CBY ini VD", "c_col2", $282828);
	dots_switch_delay_init = ini_read_real("CBY ini VD", "dots_switch_delay_init", 30);
	debug_check = ini_read_string("CBY ini VD", "debug_check", " - RELEASE");
	ini_close();
	}
	
	else if (mode == 2){
	ini_open("CryptBaseYeeter.cby");
	ini_write_string("CBY ini VD", "file_name", global.file_name);
	ini_write_string("CBY ini VD", "file_location_steam", global.file_location_steam);
	ini_write_string("CBY ini VD", "file_location_origin", global.file_location_origin);
	ini_write_string("CBY ini VD", "tool_ver", global.tool_ver);
	ini_write_real("CBY ini VD", "c_col1", c_col1);
	ini_write_real("CBY ini VD", "c_col2", c_col2);
	ini_write_real("CBY ini VD", "dots_switch_delay_init", dots_switch_delay_init);
	ini_write_string("CBY ini VD", "debug_check", debug_check);
	ini_close();
	}
	
	else if (mode == 0){
	ini_open("CryptBaseYeeter.cby");
	global.file_name = ini_read_string("CBY ini VD", "file_name", "/CryptBase.dll");
    global.file_location_steam = ini_read_string("CBY ini VD", "file_location_steam", "C:/Program Files (x86)/Steam/steamapps/common/PVZGW2");
    global.file_location_origin = ini_read_string("CBY ini VD", "file_location_origin", "C:/Program Files (x86)/Origin Games/Plants vs Zombies Garden Warfare 2");
    global.tool_ver = ini_read_string("CBY ini VD", "tool_ver", "PVZGW2 - CryptBaseYeeter | v1.3");
    c_col1 = ini_read_real("CBY ini VD", "c_col1", $434343);
    c_col2 = ini_read_real("CBY ini VD", "c_col2", $282828);
	dots_switch_delay_init = ini_read_real("CBY ini VD", "dots_switch_delay_init", 30);
	debug_check = ini_read_string("CBY ini VD", "debug_check", " - RELEASE");
	ini_open("CryptBaseYeeter.cby");
	ini_write_string("CBY ini VD", "file_name", global.file_name);
	ini_write_string("CBY ini VD", "file_location_steam", global.file_location_steam);
	ini_write_string("CBY ini VD", "file_location_origin", global.file_location_origin);
	ini_write_string("CBY ini VD", "tool_ver", global.tool_ver);
	ini_write_string("CBY ini VD", "c_col1", c_col1);
	ini_write_string("CBY ini VD", "c_col2", c_col2);
	ini_write_real("CBY ini VD", "dots_switch_delay_init", dots_switch_delay_init);
	ini_write_string("CBY ini VD", "debug_check", debug_check);
	ini_close();
	}
}