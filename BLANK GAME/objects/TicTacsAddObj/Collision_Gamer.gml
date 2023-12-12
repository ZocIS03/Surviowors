/// @description Insert description here
// You can write your code in this editor
if !(InvSpace.IsInInventory(TicTacsObj)) {
	InvSpace.AddItem(TicTacsObj);
}
else {
	if (TicTacsObj.level<5) {
		TicTacsObj.level+=1	
	}
}
instance_destroy();