//Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

//WALK


var moveHori = key_right - key_left;
var moveVerti = key_down - key_up;
if(moveHori!=0 && moveVerti!=0)
{
hsp = moveHori * walksp / 1.41;
vsp = moveVerti * walksp / 1.41;
}
else
{
hsp = moveHori * walksp;
vsp = moveVerti * walksp;
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
