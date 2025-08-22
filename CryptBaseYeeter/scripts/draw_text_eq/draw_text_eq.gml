/*
   I made this script because
   I realized how fun it actually is to code scripts
   that simplify functions I use all the time.
   This script isn't exactly the best thing ever,
   neither is its code. However,
   I found itpretty useful for this project.
*/
function draw_text_eq(x, y, string, font, color){
	if (obj_delete.classic_mode){
    draw_set_font(font);
	draw_set_color(color);
	draw_text(x,y,string);
	}
	else{
	draw_set_font(font);
	draw_set_color(color);
	draw_text(x-12,y-12,string);
	}
}