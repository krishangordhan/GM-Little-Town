/// @description Player Movement
// You can write your code in this editor

#region Check keys

moveRight = keyboard_check(vk_right);
moveLeft = keyboard_check(vk_left);
moveUp = keyboard_check(vk_up);
moveDown = keyboard_check(vk_down);

#endregion


#region Calculate Movement
vx = ((moveRight - moveLeft) * walkSpeed);
vy = ((moveDown - moveUp) * walkSpeed);

#endregion

#region If Idle
if (vx == 0 && vy == 0) {
	#region Change idle Sprite based on last directon
	switch dir {
		case 0: 
			sprite_index = spr_player_idle_right;
			break;
		case 1: 
			sprite_index = spr_player_idle_up;
			break;
		case 2: 
			sprite_index = spr_player_idle_left;
			break;
		case 3:
			sprite_index = spr_player_idle_down;
			break;
	}
	
	#endregion
}

#endregion

#region If Moving
if (vx != 0 || vy != 0) {
	x += vx;
	y += vy;
	
	#region Change to Walking Sprite
	
	if (vx > 0) {
		sprite_index = spr_player_walk_right;
		dir = 0;
	}
	if (vx < 0) {
		sprite_index = spr_player_walk_left;
		dir = 2;
	}
	if (vy > 0) {
		sprite_index = spr_player_walk_down;
		dir = 3;
	}
	if (vy < 0) {
		sprite_index = spr_player_walk_up;	
		dir = 1;
	}
	#endregion
}

#endregion

#region Depth Sorting

depth = -y;

#endregion