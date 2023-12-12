hsp = lengthdir_x(walksp,direction);
vsp = lengthdir_y(walksp,direction);

//HORIZONTAL COLLISION INTERUPT
if(place_meeting(x+hsp,y,WallObj))
{
	hardTurn = true;
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
	hardTurn = true;
	while (!place_meeting(x,y+sign(vsp),WallObj))
	{
		y+=sign(vsp);
	}
	vsp = 0;
}
y += vsp;
//walk-end


if(place_meeting(x,y,StoneBCKObj)) { walksp = 0.6*(hp/100); }
else { walksp = 0.5*(hp/100); }


if (directionChange <= 0) {
	directionChange = random_range(40,80);
	
	if hardTurn {direction += random_range(-180,180); hardTurn = false;}
	else { direction += random_range(-60,60); }
	
	
}
directionChange += -1;


if((trackerIndex > 10)&&(hp<=80)) { instance_create_layer(x+random_range(-2,2),y+random_range(-2,2),"Tracker",TrackerObj); trackerIndex = 0; }
else { trackerIndex++; }