x=Gamer.x;
y=Gamer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

fireDelay += -1;
recoil = max(0,recoil-1);

if (mouse_check_button(mb_left)) && (fireDelay<0) {
	fireDelay = 40;
	recoil = 3;
	
	for (var i=0; i<15; i++){
		with (instance_create_layer(x,y,"Bullets",BulletObj)) {
			speed = 14+ random_range(-2,2);
			direction = other.image_angle + random_range(-15,15);
			image_angle = direction;
		}
	}
}

x -= lengthdir_x(recoil,image_angle);
y -= lengthdir_y(recoil,image_angle);

if ((image_angle > 90) && (image_angle < 270 )) { image_yscale = -1; }
else { image_yscale = 1; }