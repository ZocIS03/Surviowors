/// @description Insert description here
// You can write your code in this editor

for(i=0;i<6;i++)
{
	//draw_sprite(sInventory,0,i*32+16,32);
	draw_sprite_ext(sInventory,0,i*60+16,32,4,4,0,c_white,1);
	if(inventory[i]!=0)
	{
		draw_sprite_ext(inventory[i],0,i*60+16+inventoryoffset[i][0],32+inventoryoffset[i][1],inventorymult[i],inventorymult[i],0,c_white,1);
	}
}