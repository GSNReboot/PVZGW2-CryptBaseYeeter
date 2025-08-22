if(global.button_on=false){
	global.button_on = true;
	if (buttonid=="file"){
		instance_create_depth(mouse_x+10,mouse_y+25,-10,obj_minibutton_log);
	}
}