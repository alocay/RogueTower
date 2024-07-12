
if (!is_visible) {
	return;
}

with (obj_core)
{
	draw_set_colour(c_white);
	draw_text(10, 10, "Level: " + string(level));
	draw_text(10, 25, "Fire rate: " + string(attributes.attacks_per_sec) + "/s");
	draw_text(10, 40, "Damage: " + string(attributes.projectile_damage));
	draw_text(10, 55, "Exp: " + string(experience))
}

with(obj_game_manager) {
	draw_text(10, 70, "Next @: " + string(next_exp_cap));
}

with(obj_shield) {
	draw_text(10, 85, "Shield: " + string(shield_health));
	draw_text(10, 100, "Shield Recharge: " + string(recharge_rate_per_sec) + "/s");
	draw_text(10, 115, "Shield Repulsion: " + string(repulsion_strength));
	draw_text(10, 130, "Full Recharge?: " + string(in_full_recharge));
	draw_text(10, 145, "Battery: " + string(current_charge));
}

