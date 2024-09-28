extends Node

# OOP - Inheritance, abstraction, encapsulation, and polymorphism.
# Let's create this as a class. It needs indenting along with everything inside of it. If we want to instance it we do var player = Player.new()
class Player:

	# Start with a variable we can use that will be affected by the established method.
	var player_health: int = 5

	# Create a method with an arguement that allows for varied results but the default is 1.
	func lose_health(amount = 1):
		player_health -= amount
		if player_health <= 0:
			print("You died!")

	# Let's test the method with the needed parameter.
	func _ready() -> void:
		lose_health(2)
		print(player_health)
