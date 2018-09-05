///scr_movement_galor

//Enemy AI
phasercharge = phasercharge + 1;

//Movement
if instance_exists(global.playership && obj_galor) {
    var px = instance_nearest(x, y, global.playership).x
    var py = instance_nearest(x, y, global.playership).y
    if distance_to_object(global.playership) < 250
    {
        direction = point_direction(x, y, px, py);
        image_angle = direction;
    }
}   

//Firing
if instance_exists(global.playership and obj_galor) {
    if distance_to_object(global.playership) < 150 {
    
            if phasercharge >= random_range(30, 60) { 
                galor_phaser = instance_create(x, y ,obj_galor_phaser);
                galor_phaser.direction = image_angle;
                galor_phaser.image_angle = image_angle;
                galor_phaser.speed = 10;
                phasercharge = 0;
                audio_play_sound(snd_disruptor, 0, 0);
            }
    }
}
