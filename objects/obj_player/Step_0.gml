//Movement code
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

hspd = (right - left) * spd;
vspd = (down - up) * spd;

if place_meeting(x + hspd, y, obj_collision){
	while !place_meeting(x + sign(hspd), y, obj_collision){
		x += sign(spd);	
	}
	hspd = 0;
}

x += hspd;

if place_meeting(x, y + vspd, obj_collision){
	while !place_meeting(x, y + vspd, obj_collision){
		v += sign(spd);	
	}
	vspd = 0;
}

y += vspd;

//Sprite set
dir = floor((point_direction(x, y, mouse_x, mouse_y) + 45) / 90);

if hspd == 0 and vspd == 0{
	switch dir {
		default:
			image_xscale = 1;
			sprite_index = idle_down;
		break

		case 1:
			sprite_index = idle_up;	
		break

		case 2:
			image_xscale = -1;
			sprite_index = idle_side;
		break
	
		case 3:
			sprite_index = idle_down;
		break
	}
} else {
		switch dir {
		default:
			image_xscale = 1;
			sprite_index = placeholder_player_walk_side;
		break

		case 1:
			sprite_index = placeholder_player_walk_up;	
		break

		case 2:
			image_xscale = -1;
			sprite_index = placeholder_player_walk_side;
		break
	
		case 3:
			sprite_index = placeholder_player_walk_down;
		break
	}	
}





