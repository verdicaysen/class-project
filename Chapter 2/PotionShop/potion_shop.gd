extends Node2D

var player_money: int = 5
var item_cost: int = 10
var item_name: String = "Potion"

func _ready():
	make_money()
	buy_potion()
	life_counter()
	match_names()

func buy_potion():
	if player_money == item_cost:
		player_money -= 10
		print("You have bought a potion for 10 gold!")
	else:
		print("You don't have enough money!")

func make_money():
	while player_money < 10:
		player_money+=1
		print(player_money)
	
func life_counter():
	var number_of_lives = 1

	if number_of_lives >= 10:
		print("You have ten lives!")
	elif number_of_lives < 10 and number_of_lives > 2:
		print("You still have some lives left!")
	else:
		print("Getting a little low on life bro.")

func match_names():
	var name = "John"
	match name:
		"Maria":
			print("Welcome," + name)
		"Eric":
			print("Welcome," + name)
		"John":
			print("How are you doing, " + name)
		
