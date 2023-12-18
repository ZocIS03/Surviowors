with (other) {
	if (immunity <= 0) {
		immunity = 2;
		hp += -(other.level+5);
	}
	immunity += -1;
}

