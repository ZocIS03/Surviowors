x=Gamer.x;
y=Gamer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

fireDelay += -1;
recoil = max(0,recoil-1);

if (fireDelay<0) {
	fireDelay = 120;
	with (instance_create_layer(x,y,"Bullets",GranadeObj)) {
			relativeX = x - CrosshairObj.x;
			relativeY = y - CrosshairObj.y;
			speed = (sqrt(sqr(relativeX)+sqr(relativeY)))/2;
			direction = other.image_angle;
			image_angle = direction;
		}
}

x -= lengthdir_x(recoil,image_angle);
y -= lengthdir_y(recoil,image_angle);

if ((image_angle > 90) && (image_angle < 270 )) { image_yscale = -1; }
else { image_yscale = 1; }