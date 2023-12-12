//Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//WALK
if(place_meeting(x,y,StoneBCKObj)) {
	walksp = 2.2;	
}
else {
	walksp = 2;
}

var moveHori = key_right - key_left;
hsp = moveHori * walksp;
var moveVerti = key_down - key_up;
vsp = moveVerti * walksp;



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
