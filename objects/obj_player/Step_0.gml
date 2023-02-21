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
	// do nothing for now.
}

#endregion

#region If Moving
if (vx != 0 || vy != 0) {
	x += vx;
	y += vy;
}

#endregion