
kierunekDoGracza = point_direction(x,y,Gamer.x,Gamer.y);
if(abs(kierunek-kierunekDoGracza)>rotation)
{
	if(sin((kierunekDoGracza-kierunek)*pi/180)>0)
		kierunek=kierunek+rotation;
	else
		kierunek=kierunek-rotation;
		
		
	if(kierunek>360)
		kierunek=kierunek-360;
	else if(kierunek<=0)
		kierunek=kierunek+360;
}
else
{
	kierunek=kierunekDoGracza;
	if(distance_to_object(Gamer)<150 && delay<=0)
	{
		delay=50;
		with (instance_create_layer(x,y,"Bullets",EnemyBulletObj)) {
			speed = 10;
			direction=other.kierunek;
			image_angle = direction;
		}
	}
}

delay=delay-1;
image_angle = kierunek;
if(hp<=0)
{
	instance_deactivate_object(TurretBossBottomObj);
	instance_destroy();
}