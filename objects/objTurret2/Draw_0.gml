draw_sprite(sprite_index, 0, x, y);

var missilesImg = firingFrequency <= 10 ? 1 : 2;
draw_sprite_ext(sprite_index, missilesImg, x, y, 1, 1, image_angle, c_white, 1);