if (select_confirm = false){
	select_confirm = true;
}
else if (select_confirm = true){
	select_confirm = false;
}
if (buttonid == "steam dir"){
	global.file_location=global.file_location_steam;
	obj_delete.delete_steam = 1;
	instance_activate_layer(5);
	instance_deactivate_layer(2);
	instance_deactivate_layer(1);
}
if (buttonid == "origin dir"){
	global.file_location=global.file_location_origin;
	obj_delete.delete_origin = 1;
	instance_activate_layer(5);
	instance_deactivate_layer(2);
	instance_deactivate_layer(1);
}
if (buttonid == "custom dir"){
	obj_delete.delete_custom_check = 1;
	instance_activate_layer(5);
	instance_deactivate_layer(2);
	instance_deactivate_layer(1);
}
if (buttonid == "quit"){
	game_end();
}
if (buttonid == "pref"){
	global.mode = "preferences";
	instance_deactivate_layer(1);
}
if (buttonid == "dir" || buttonid == "stop"){
	game_restart();
}

// Themes
if (buttonid == "theme" && obj_delete.theme == "default"){
	obj_delete.theme = "red";
	ini_cby(2);
}
else if (buttonid == "theme" && obj_delete.theme == "red"){
	obj_delete.theme = "blue";
	ini_cby(2);
}
else if (buttonid == "theme" && obj_delete.theme == "blue"){
	obj_delete.theme = "green";
	ini_cby(2);
}
else if (buttonid == "theme" && obj_delete.theme == "green"){
	obj_delete.theme = "magenta";
	ini_cby(2);
}
else if (buttonid == "theme" && obj_delete.theme == "magenta"){
	obj_delete.theme = "flame";
	ini_cby(2);
}
else if (buttonid == "theme" && obj_delete.theme == "flame"){
	obj_delete.theme = "default";
	ini_cby(2);
}