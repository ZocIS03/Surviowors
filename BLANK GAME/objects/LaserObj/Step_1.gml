x=Gamer.x;
y=Gamer.y;

image_angle = point_direction(x,y,mouse_x,mouse_y);

fireDelay += -1;
recoil = max(0,recoil-1);

if (fireDelay<0) {
	fireDelay = 20;
	for (var i=0; i<=1; i++) {
		with (instance_create_layer(x,y,"Bullets",LaserBulletObj)) {
			spread = 10;
			relativeX = x - CrosshairObj.x;
			relativeY = y - CrosshairObj.y;
			image_xscale = sqrt(sqr(relativeX) + sqr(relativeY));
			direction = other.image_angle+(i*spread*(power(-1,i)));
			image_angle = direction;
		}
		with (instance_create_layer(x,y,"Bullets",LaserBulletObj)) {
			spread = 10;
			relativeX = x - CrosshairObj.x;
			relativeY = y - CrosshairObj.y;
			image_xscale = sqrt(sqr(relativeX) + sqr(relativeY));
			direction = other.image_angle-(i*spread*(power(-1,i)));
			image_angle = direction;
		}
		
	}
}

x -= lengthdir_x(recoil,image_angle);
y -= lengthdir_y(recoil,image_angle);

if ((image_angle > 90) && (image_angle < 270 )) { image_yscale = -1; }
else { image_yscale = 1; }