/// @description Insert description here
// You can write your code in this editor

for(i=0;i<InvSize;i++)
{
	//draw_sprite(sInventory,0,i*32+16,32);
	draw_sprite_ext(sInventory,0,i*60+16,32,4,4,0,c_white,1);
	draw_sprite_ext(sInventory,0,i*60+16,92,4,4,0,c_white,1);
	if(inventory[i]!=-1)
	{	
		draw_sprite_ext(object_get_sprite(inventory[i]),0,i*60+48+inventoryoffset[i][0],64+inventoryoffset[i][1],inventorymult[i],inventorymult[i],0,c_white,1);
	}
	if(itemInventory[i]!=-1)
	{
		draw_sprite_ext(object_get_sprite(itemInventory[i]),0,i*60+16,90,4,4,0,c_white,1);
	}
}
if(itemInventory[0]!=-1)
	{
		draw_sprite_ext(object_get_sprite(itemInventory[0]),0,0*60+16,90,4,4,0,c_white,1);
	}