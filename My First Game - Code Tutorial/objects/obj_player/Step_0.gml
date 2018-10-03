// Movement keys
if (keyboard_check(vk_right)) x = x + 4; // Right
if (keyboard_check(vk_left)) x = x - 4; // Left
if (keyboard_check(vk_up)) y = y - 4; // Up
if (keyboard_check(vk_down)) y = y + 4; // Down

// Mouse point
image_angle = point_direction(x, y, mouse_x, mouse_y);

// Shooting
if (mouse_check_button(mb_left)) && (cooldown < 1)
{
	instance_create_layer(x,y,"bulletlayer",obj_bullet);	
	cooldown = 3;
}

cooldown = cooldown - 1;