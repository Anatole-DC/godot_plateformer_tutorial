<h1 align="center">GODOT ENGINE - PLATEFORMER TUTORIAL</h1>

_<h5 align="center">Learn how to make a game with the Godot Engine.</h5>_

**<h2 align="center">3 - Sprites animations and Tiles</h2>**

### Requirements

Before following this course, if you are using this project as source code, run the following command :

```bash
❯ git checkout 3-Sprites-and-animations
```

### Summary

In this part we are going to see :

- How to add an animation to the player
- How to change animation according to the action
- Add tileset to create good looking plateforms

### Animations

**Import the sprites**

The first step is going to be importing the sprites into the game engine. If you don't have any sprites, you can find some free assets on [itch.io](https://itch.io/game-assets/free), or use the sprites of the project [here](assets/animations/player).

**Load the idle animation**

The idle animation is the animation ran when the player is not moving. Let's select our player scene, and replace our sprite by an `AnimatedSprite` (you can right click on the `Sprite` and click on `change sprite to`).

In the inspector, in the `frames` parameter, click on `new SpriteFrames`, and click again on the `SpriteFrames`. A new dock should pop up benith the viewport.

![Animation Dock](assets/course/animation_dock.png)

You can rename `default` to `idle` and click on the folder to load your sprites.

![Animation Loaded](assets/course/animation_loaded.png)

You can check if the animation is loaded by checking the `Playing` option in the inspector, and you can change the speed of the animation by changing the FPS in the left part of the animation dock. If you are not satisfied with the size of your assets, you can change it in the inspector pannel.

> You can create as much animations as you want in your game, in this course, we will implement the following animations : `running`, `jumping`, and `dying`.

**Add the animations in the script**

To add the animation, we are going to edit the player script.

### Conclusion

**Let's summerize what we learned :**

