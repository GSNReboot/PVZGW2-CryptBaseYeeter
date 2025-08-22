// Scripts
ini_cby(0);

// Deletion Check Variables
delete_steam = 0;
delete_origin = 0;
delete_custom = 0;

// Custom Deletion Directory Variables
delete_custom_entry = "";
delete_custom_check = 0;
_ini_check = 0;

// GLobal Variables
global.file_location_custom = delete_custom_entry;
global.file_location = "";
global.mode = "sandbox";
global.log_mode = false;
global.log_report = "";

// Display Vars
dir_select_text = "Directory Sandbox";
tip = "";
dots = ".";
dots_switch_delay = dots_switch_delay_init;
display_text = dir_select_text;

// Misc/Debug Variables
display_hint = noone;
debug_input = 0;
debug_input_check = "";