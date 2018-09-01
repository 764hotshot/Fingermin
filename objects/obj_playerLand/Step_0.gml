

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_up = keyboard_check(vk_up);

var move;

hsp = (key_right - key_left) * 15;

x += hsp;
y += vsp;

