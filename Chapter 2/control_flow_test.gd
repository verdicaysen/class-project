extends Node2D

func _ready() -> void:
	var score: int = 5
	var number_of_lives: int = 3
	var status: bool = false

	if score >= 50:
		print("You're great!")
	else:
		print("You suck!")

# Else if ternary statement.
	if number_of_lives < 0: 
		print("You died!")
	elif number_of_lives <= 1:
		print("You could die with only one blow!")
	elif number_of_lives <= 3:
		print("You don't have a lot of lives left.")
	else:
		print("You LIVE!")

	if number_of_lives <= 3 and score <= 50:
		status = true
		print(status)

# Match statement with different outcomes based on damage type.
	var damage_type: String = "fire"
	match damage_type:
		"fire":
			print("Welcome to the barbeque!")
		"water":
			print("You are drowning!")
		"ice":
			print("You're cold!")
	
	var amount_of_damage
	if damage_type == "fire":
		amount_of_damage = 5
		print(amount_of_damage)
	else:
		amount_of_damage = 1
		print(amount_of_damage)
	
