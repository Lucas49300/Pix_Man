///mix_colors(color1,color2);
function mix_colors(argument0, argument1) {
	var color1 = argument0;
	var color2 = argument1;

	switch(color1){
		case global.COLOR_BLUE:
		if(color2 == global.COLOR_RED){
			return global.COLOR_MAGENTA;
		}else if(color2 == global.COLOR_GREEN){
			return global.COLOR_CYAN;
		}else{
			return global.COLOR_BLUE;
		}
		case global.COLOR_RED:
		if(color2 == global.COLOR_BLUE){
			return global.COLOR_MAGENTA;
		}else if(color2 == global.COLOR_GREEN){
			return global.COLOR_YELLOW;
		}else{
			return global.COLOR_RED;
		}
		case global.COLOR_GREEN:
		if(color2 == global.COLOR_BLUE){
			return global.COLOR_CYAN;
		}else if(color2 == global.COLOR_RED){
			return global.COLOR_YELLOW;
		}else{
			return global.COLOR_GREEN;
		}
		default:
		return global.COLOR_NONE;
	}



}
