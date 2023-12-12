if !(InvSpace.IsInInventory(LaserObj)) {
	InvSpace.AddWeapon(LaserObj);
	instance_create_layer(x,y,"Gun",LaserObj);
}
else {
	if (LaserObj.level<5) {
		LaserObj.level+=1	
	}
}
instance_destroy();