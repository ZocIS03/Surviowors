if !(InvSpace.IsInInventory(SawBladeObj)) {
	InvSpace.AddWeapon(SawBladeObj);
	instance_create_layer(x,y,"Gun",SawBladeObj);
}
else {
	if (SawBladeObj.level<5) {
		SawBladeObj.level+=1	
	}
}
instance_destroy();