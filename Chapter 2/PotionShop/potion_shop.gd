extends Node2D

# Declaring these variables with strict types using : type as opposed to generic. 60% memory performance difference on average. Strict types are best!
var player_money: int = 5
var item_cost: int = 10
var item_name: String = "Potion"

func _ready():
	make_money()
	buy_potion()
	life_counter()
	match_names()

# If else statement for purchasing.
func buy_potion():
	if player_money == item_cost:
		player_money -= 10
		print("You have bought a potion for 10 gold!")
	else:
		print("You don't have enough money!")

# Method with a while up with a money counter.
func make_money():
	while player_money < 10:
		player_money+=1
		print(player_money)

# Method with an if elif else statement.
func life_counter():
	var number_of_lives = 1

	if number_of_lives >= 10:
		print("You have ten lives!")
	elif number_of_lives < 10 and number_of_lives > 2:
		print("You still have some lives left!")
	else:
		print("Getting a little low on life bro.")

# Method with a match statement. Similar to switch statements.
func match_names():
	var name = "John"
	match name:
		"Maria":
			print("Welcome," + name)
		"Eric":
			print("Welcome," + name)
		"John":
			print("How are you doing, " + name)
		
