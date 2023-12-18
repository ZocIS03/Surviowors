/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(Gamer)<125 && delay<=0 && lock==false)
{
	promien=true;
	hotness=hotness+0.25;
	delay=40;
	deltaTime=5;
	Gamer.hp=Gamer.hp-4;
	if(hotness==1)
		lock=true;
}
if(delay>-40)
{
	delay=delay-1;
	if(delay==-40 && hotness>0)
	{
		delay=0;
		hotness=hotness-0.25;
		if(hotness==0)
			lock=false;
	}
}
if(hotness>0)
	hp=hp-(hotness*1);
if(deltaTime>0)
{
	deltaTime=deltaTime-1;
	if(deltaTime==0)
	{
		promien=false;
	}
}
if(hp<=0)
{
	instance_destroy();
}
