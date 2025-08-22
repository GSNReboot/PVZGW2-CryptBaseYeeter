if (buttontype == "folder"){
if (selected == true){
	global.arrow_kill = 0;
	instance_create_layer(x-25,y+6,1,arrow);
}
else if (selected == false){
	global.arrow_kill = 1;
}
}

else if (buttontype == ""){
	if (selected == true){
		global.arrow_kill = 0;
		instance_create_layer(x,y+6,1,arrow);
    }
    else if (selected == false){
		global.arrow_kill = 1;
    }
}

if (select_confirm == true){
	draw_selected_button = true;
}
else{
	draw_selected_button = false;
}

if (global.mode == "preferences"){
	instance_activate_layer(3);
}
else{
	instance_deactivate_layer(3);
	instance_deactivate_layer(5);
}