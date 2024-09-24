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
	
	
