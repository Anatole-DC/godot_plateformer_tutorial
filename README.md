<h1 align="center">GODOT ENGINE - PLATEFORMER TUTORIAL</h1>

_<h5 align="center">Learn how to make a game with the Godot Engine.</h5>_

**<h2 align="center">2 - Implementing player movements</h2>**

### Requirements

Before following this course, if you are using this project as source code, run the following command :

```bash
❯ git checkout 2-Player-movements
```

### Summary

In this part we are going to see :

- How to create a new player object
- How to create our first script
- How to implement left and right movements
- How to add jumping and wall jumps

> From this part to the end of the tutorial, there will be less images and the code will be created into code sections.  
> If you feel lost, our you find some words that do not ring any bells to you, see the previous part of this tutorial.

### Create our player object

Let's implement a basic player object. It will be compose as such :

- A `KinematicBody2D` as a root node
- A `Sprite` (like our demo character in the previous chapter)
- A `CollisionShape2D` that matches the sprite size.

> The `Sprite` will be switched by an `AnimatedSprite` later in the course, but we will start with a simple sprite at first.

### Attach a script to our player

Click the script button above the node dock, to attach a new script to the object, you can leave all the settings by default, except for the `template` where you can select `No comments` if you don't want to be bothered by the comments that are added by default.

You should land on the script page with the following content :

```gd
extends KinematicBody2D

func _ready():
	pass
```

The `ready()` function is the method called when the object is created. It is only called once.

We are going to add a new nativ function called `_physics_process(delta)`. This function is the function called on each game iteration (frame), and will be the most used function in our game. Paste the following code before running your game to check the behavior of the function.

```gd
var iteration = 0

func _physics_process(delta):
	print("Hello World {iteration}".format({"iteration": iteration}))
	iteration += 1
```

> For the print, the {iteration} is then replaced by the value passed in the format following the string.

If you run the game, you can see the message printed in your console, with the increment. This means that your script is working.

```bash
...
Hello World 185
Hello World 186
Hello World 187
Hello World 188
Hello World 189
Hello World 190
Hello World 191
...
```
### Left and right movements


### Gravity and jumps

### Wall jumps

### Conclusion
