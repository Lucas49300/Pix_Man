var rotation_speed = 10;

if(mouse_check_button(mb_left)){
	
	var ldx = lengthdir_x(0, mouse_x);
	var ldy = lengthdir_y(0, mouse_y);
	
		object_set_sprite(Bullet,-1);
	switch(self.color){
		case global.COLOR_BLUE:
		object_set_sprite(Bullet,bullBLue);
		break;
		case global.COLOR_GREEN:
		object_set_sprite(Bullet,bullGreen);
		break;
		case global.COLOR_RED:
		object_set_sprite(Bullet,bullRed);
		break;
		default:
		object_set_sprite(Bullet,bull);
	}
	bullet = instance_create_layer(x+ldx, y+ldy, "Bullets", Bullet);
	bullet.color = self.color;
	
	bullet.bulletDirection = point_direction(x,y,mouse_x,mouse_y);
	
}

var pd = point_direction(x, y, mouse_x, mouse_y);
var dd = angle_difference(image_angle, pd);
image_angle -= min(abs(dd), rotation_speed) * sign(dd);