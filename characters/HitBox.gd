extends Area

class_name HitBox

export var weak_spot = false
export var critical_damage_multiplier = 2
signal hurt

func hurt(damage: int, dir: Vector3):
	if weak_spot:
		emit_signal("hurt", damage * critical_damage_multiplier, dir)
	else:
		emit_signal("hurt", damage, dir)
