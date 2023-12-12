/// @description Insert description here
// You can write your code in this editor
for(i=0;i<6;i++)
{
	inventory[i]=0;
	inventoryoffset[i][0]=0;
	inventoryoffset[i][1]=0;
	inventorymult[i]=1;
}

function AddWeapon(weapon)
{
	zn=-1;
	for(i=0;i<6;i++)
	{
		if(inventory[i]==0)
		{
			zn=i;
			break;
		}
	}
	if(zn!=-1)
	{
		inventory[i]=weapon;
		xs = sprite_get_width(weapon);
		ys = sprite_get_height(weapon);
		ox = sprite_get_xoffset(weapon);
		oy = sprite_get_yoffset(weapon);
		if(xs>ys) maxi=xs;
		else maxi=ys;
		mult=50/maxi;
		inventorymult[i]=mult;
		inventoryoffset[i][0]=xs/2+(ox*mult);
		inventoryoffset[i][1]=ys/2+(oy*mult);
	}
	
}

AddWeapon(Gun);
AddWeapon(sSlot);
