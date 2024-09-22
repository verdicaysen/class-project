extends Node2D

func _ready() -> void:
	print("Hello world!")
	var number_of_lives: int = 3
	var fireball_damage: int = 2
	print("The number of lives is ", gross_method(fireball_damage, number_of_lives))

func gross_method(fireball_damage, number_of_lives) -> int:
	var total_damage: int
	total_damage = number_of_lives + fireball_damage / 2
	return total_damage
