with(other)
{
	hp--;	
	hit_flash = hit_flash_max;
	bloodsplatter(x,y, other.direction);
}

instance_destroy();