if(distance_to_object(Gamer)<150 && delay<=0)
{
	delay=50;
	with (instance_create_layer(x,y,"Bullets",EnemyBulletObj)) {
			speed = 10;
			direction=point_direction(x,y,Gamer.x,Gamer.y);
			image_angle = direction;
		}
}
delay=delay-1;
image_angle = point_direction(x,y,Gamer.x,Gamer.y);