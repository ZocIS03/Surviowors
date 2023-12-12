/// @description Insert description here
// You can write your code in this editor
#macro InvSize 6

for(i=0;i<InvSize;i++)
{
	inventory[i]=0;
	inventoryoffset[i][0]=0;
	inventoryoffset[i][1]=0;
	inventorymult[i]=1;
	itemInventory[i]=0;
}

function IsInInventory(ObjWeapon)
{
	is=false;
	for(i=0;i<InvSize;i++)
	{
		if(inventory[i]==ObjWeapon || itemInventory[i]==ObjWeapon)
		{
			is=true;
			break;
		}
	}
	return is;
}
function AddWeapon(OBJweapon)
{
	weapon = object_get_sprite(OBJweapon);
	zn=-1;
	for(i=0;i<InvSize;i++)
	{
		if(inventory[i]==0)
		{
			zn=i;
			break;
		}
	}
	if(zn!=-1)
	{
		inside=50;
		inventory[zn]=OBJweapon;
		xs = sprite_get_width(weapon);
		ys = sprite_get_height(weapon);
		ox = sprite_get_xoffset(weapon);
		oy = sprite_get_yoffset(weapon);
		if(xs>ys) maxi=xs;
		else maxi=ys;
		mult=inside/maxi;
		inventorymult[i]=mult;
		inventoryoffset[i][0]=(inside/2)-((xs-ox)*mult);
		inventoryoffset[i][1]=(inside/2)-((ys-oy)*mult);
	}
	
}
function AddItem(ObjItem)
{
	zn=-1;
	for(i=0;i<InvSize;i++)
	{
		if(itemInventory[i]==0)
		{
			zn=i;
			break;
		}
	}
	if(zn!=-1)
	{
		itemInventory[zn]=ObjItem;
	}
}


AddWeapon(GunObj);
