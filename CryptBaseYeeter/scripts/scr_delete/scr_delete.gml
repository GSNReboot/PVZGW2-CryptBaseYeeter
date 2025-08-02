function scr_delete(){
	if (file_exists(global.file_location + global.file_name)){
		file_delete(global.file_location + global.file_name);
	}
}