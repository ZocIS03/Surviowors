if !(InvSpace.IsInInventory(HolyHandGranadeObj)) {
	InvSpace.AddWeapon(HolyHandGranadeObj);
	instance_create_layer(x,y,"Gun",HolyHandGranadeObj);
}
else {
	if (HolyHandGranadeObj.level<5) {
		HolyHandGranadeObj.level+=1	
	}
}
instance_destroy();