// Deletion Check Variables
delete_steam = 0;
delete_origin = 0;
delete_custom = 0;

// Custom Deletion Directory Variables
delete_custom_entry = "";
delete_custom_check = 0;
_ini_check = 0;

// GLobal Variables
global.file_name = "/CryptBase.dll"
global.file_location_steam = "C:/Program Files (x86)/Steam/steamapps/common/PVZGW2";
global.file_location_origin = "C:/Program Files (x86)/Origin Games/Plants vs Zombies Garden Warfare 2";
global.file_location_custom = delete_custom_entry;
global.file_location = "";
global.tool_ver = "PVZGW2 - CryptBaseYeeter | v1.2";

// Logs
ini_open("_LOG.txt");
ini_write_string("CBYLBL", "deleting from", "noone");
ini_close();

// Misc/Debug Variables
c_col1 = $434343;
c_col2 = $282828;
dots = ".";
dots_switch_delay = 30;
debug_input = 0;
debug_input_check = 0;
debug_check = "";