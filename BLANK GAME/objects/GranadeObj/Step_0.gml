if (deltaTime>120) {
	instance_create_layer(x,y,"Bullets",BoomObj);
	instance_destroy();	
}
speed = speed/2;
deltaTime += 1;