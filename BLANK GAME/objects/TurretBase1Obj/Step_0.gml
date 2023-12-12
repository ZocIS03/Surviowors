/// @description Insert description here
// You can write your code in this editor


kierunek = point_direction(Gamer.x,Gamer.y,x,y);

if(distance_to_object(Gamer)<150 && delay<=0)
{
	delay=50;
	with (instance_create_layer(x,y,"Bullets",EnemyBulletObj)) {
			speed = 10;
			direction=other.kierunek-180;
			image_angle = direction;
		}
}
delay=delay-1;