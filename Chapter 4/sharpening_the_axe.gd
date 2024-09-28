extends Node


var inventory: Array = ["Boots", "Sword", "Grapes", "Cuffs", "Potion"]

# Create a function that takes an array representing an inventory and and integer. 
# The function checks if the array is longer than the provided integer. If it is then it removes all items that are too much. 
# Lastly the function returns the resulting array.
func limit_inventory(items: Array, max_size: int):
	if items.size() > max_size:
		items.resize(max_size)
	return items


func _ready():
	var limited_inventory: Array = limit_inventory(inventory, 3)
	print(limited_inventory)
	var player_health: int = 5
	if player_health > 2:
		var damage: int = 2
		player_health -= damage
		print(player_health)
