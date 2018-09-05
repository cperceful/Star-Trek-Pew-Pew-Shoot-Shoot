///Enemy AI
phasercharge = phasercharge + 1;

///Movement
if instance_exists(global.playership && obj_battleship) {
    var px = instance_nearest(x, y, global.playership).x
    var py = instance_nearest(x, y, global.playership).y
    if distance_to_object(global.playership) < 350
    {
        direction = point_direction(x, y, px, py);
        image_angle = direction;
    }
}   

///Firing
if instance_exists(global.playership and obj_battleship) {
    if distance_to_object(global.playership) < 250 {
    
            if (phasercharge >= 20) { 
                bstorp = instance_create(x, y ,obj_bstorp);
                bstorp.direction = image_angle;
                bstorp.image_angle = image_angle;
                bstorp.speed = 10;
                phasercharge = 0;
                audio_play_sound(snd_battleshipweapon, 0, 0);
            }
    }
}

    

