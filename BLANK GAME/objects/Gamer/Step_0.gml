//Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//WALK
walkmods = 1 * TicTacsObj.getSpeed();
walkmods = walkmods * walksp;

var moveHori = key_right - key_left;
var moveVerti = key_down - key_up;
if(moveHori!=0 && moveVerti!=0)
{
hsp = moveHori * walkmods / 1.41;
vsp = moveVerti * walkmods / 1.41;
}
else
{
hsp = moveHori * walkmods;
vsp = moveVerti * walkmods;
}



//HORIZONTAL COLLISION INTERUPT
if(place_meeting(x+hsp,y,WallObj))
{
	while (!place_meeting(x+sign(hsp),y,WallObj))
	{
		x+=sign(hsp);
	}
	hsp = 0;
}
x += hsp;
//walk-end

//VERTICAL COLLISION INTERUPT
if(place_meeting(x,y+vsp,WallObj))
{
	while (!place_meeting(x,y+sign(vsp),WallObj))
	{
		y+=sign(vsp);
	}
	vsp = 0;
}
y += vsp;
//walk-end

//enemy spawn
if (deltaTime >= 5) {
		deltaTime = 0;
		dev_V = 0;
		dev_H = 0;
		if (random(1)>=0.5) { dev_V = -1; }
		else { dev_V = 1; }
		if (random(1)>=0.5) { dev_H = 1; }
		else { dev_H = 0; }
		if (dev_H) {
			instance_create_layer(Gamer.x+(dev_V*350),Gamer.y+random_range(-300,300),"Enemies",EnemyObj);
		}
		else {
			instance_create_layer(Gamer.x+random_range(-200,200),Gamer.y+(dev_V*300),"Enemies",EnemyObj);
		}
}
deltaTime+=1;