///scr_movement_player_keyboard

var up_key = keyboard_check(vk_up) || keyboard_check(ord("W"));
var down_key = keyboard_check(vk_down) || keyboard_check(ord("S"));
var right_key = keyboard_check(vk_right)|| keyboard_check(ord("D"));
var left_key = keyboard_check(vk_left) || keyboard_check(ord("A"));

//checks if the space bar is pressed, keyboard_check would have constant stream
var shootyshoot = keyboard_check_pressed(vk_space);
//checks if left mouse is pressed, same as keyboard check
var leftmouse = mouse_check_button_pressed(mb_left);


//added by brian - moves from your "press space" event, allows for better scalability
if ((shootyshoot) || (leftmouse)) {

    torpedo = instance_create(x, y ,obj_torpedo);
    torpedo.direction = image_angle;
    torpedo.image_angle = image_angle;
    torpedo.speed = 10;
    audio_play_sound(snd_torpedo, 0, 0);
    
    

} //brian's shit ends here

///Forward motion
if (up_key) {
    motion_add(image_angle, .2);
}

///Reverse motion
if (down_key) {
    motion_add(image_angle, -.15);
}

///Turn right
if (right_key) {
    image_angle -= 2;
}

///Turn left
if (left_key) {
    image_angle += 2;
}

if(speed > 5) speed = 5;

///Friction
speed = max(speed - 0.1, 0);

