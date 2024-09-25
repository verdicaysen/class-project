extends Node

# Clean array declaration with strict type.
var inventory: Array = ["key", "potion", "sword", "flower"]

# Strictly typed array with multiple variable types stored in it.
var an_array: Array = [
	5,
	1.27,
	"strings",
	false
]

# Print it out in the _ready function.
func _ready() -> void:
	print(inventory[0])
	print(inventory[1])
	
	# You can go negative in arrays as long as it's within bounds.
	print(inventory[-2])
	print(an_array[0])
	
	# Appending things to the inventory array.
	inventory.append("golden flame")
	print(inventory[4])
	
	# Addressing part of the index with .find to find it in the array.
	var index_of_potion = inventory.find("potion")
	
	# Removing the item in the index at that variables indicated position.
	inventory.remove_at(index_of_potion)
	
	# Print the new item that is now in position 1 of the index.
	print(inventory[1])
	
	# Let's do a for loop to print out everything still in the inventory.
	for item in inventory:
		print("You possess ", item)
	
	# Let's do a loop using size to get the entire inventory and then print the range per index.
	for index in range(inventory.size()):
		print("The item at index ", index, " is ", inventory[index])
	
	#Let's do the numbers range of 10 to 20.
	for number in range(10, 20):
		print(number)
	while inventory.size() > 3:
		inventory.remove_at(0)
		print(inventory[0])
		
	# Establish new array for continue and break practice.
	var new_inventory: Array = ["Boots", "Bandages", "Bananas", "Warm Gloves", "Goggles"]
	while new_inventory.size() > 3:
		if new_inventory[0] == "Bananas":
			break
		print("Removing :", new_inventory[0])
		new_inventory.remove_at(0)
	
	# Dictionary. Looks like you can use different value types. Might also be able to force in files. Will research more.
	var item: Dictionary = {
		"name"  : "Shoes",
		"price" : 2,
		"weight": 2
	}
	# We can print the contents of this item and then we can increment it by a new amount and then view the change.
	print(item)
	item["price"] += 10
	print(item["price"])
	
	# We can add a new key value pair to the Dictionary.
	item["strength"] = 10
	print(item["strength"])
	
	# We can use the has to find something within an array.
	if item.has("strength"):
		print(item.strength)
	
	# Let's loop through the dictionary and print each key pair.
	for key in item:
		print(key, " is ", item[key])
		
	# Let's loop through the dictionary and print each value.
	for value in item.values():
		print(value)
		
	var tissa_inventory = [
		{
			"name": "Boots",
			"price": 5,
		},
		{
			"name": "Boxing Gloves",
			"price": 2,
		},
		{
			"name": "Combustion Card",
			"price": 20,
		}
	]
	
	# Creating nested loops with the Dictionar. A loop within a loop. 
	for item_index in tissa_inventory.size():
		print("Stats of item ", item_index, ":")
		var items = tissa_inventory[item_index]
		for key in items:
			print(key, item[key])
