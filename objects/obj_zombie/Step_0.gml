if (hp <= 0)
{
	instance_destroy();	
}

if (instance_exists(obj_player))
{
	mp_potential_step(obj_player.x, obj_player.y, walkspeed, false);
}
