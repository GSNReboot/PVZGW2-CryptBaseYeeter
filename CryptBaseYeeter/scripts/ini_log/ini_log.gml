function ini_log(){
ini_open("_LOG.txt");
ini_write_string("CBYLBL", "deleting dir", global.file_location);
ini_write_string("CBYLBL", "file to delete", global.file_name);
if (obj_delete.debug_check == " - RELEASE"){
	ini_write_string("CBYLBL", "release mode", "RELEASE");
}
else if (obj_delete.debug_check == " - DEBUG"){
	ini_write_string("CBYLBL", "release mode", "DEBUG");
}
else{
	ini_write_string("CBYLBL", "release mode", "noone");
}
ini_write_string("CBYLBL", "steam dir", global.file_location_steam);
ini_write_string("CBYLBL", "origin dir", global.file_location_origin);
ini_write_string("CBYLBL", "color asset #1", c_col1);
ini_write_string("CBYLBL", "color asset #2", c_col2);
ini_write_string("CBYLBL", "is classic mode", classic_mode);
ini_close();
}