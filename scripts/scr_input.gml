///scr_input    

var up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
var right_key = keyboard_check(vk_right)|| keyboard_check(ord("D"));
var left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));

//checks if the space bar is pressed, keyboard_check would have constant stream
var shootyshoot = keyboard_check_pressed(vk_space);
//checks if left mouse is pressed, same as keyboard check
var leftmouse = mouse_check_button_pressed(mb_left);
