level = 0;

function getSpeed()
{
	speedn=1;
	if(level>0)
	{
		speedn=speedn+0.15+(level*0.05);
	}
	return speedn;
}