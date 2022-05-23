extends KinematicBody2D

func _ready():
	pass

var iteration = 0

func _physics_process(delta):
	print("Hello World {iteration}".format({"iteration": iteration}))
	iteration += 1
