# Free & Open-Source Framework

This framework is completely **free to use** and comes with a **free license**.
You are free to modify it however you like and use it in your own projects.
Please make sure to read the notes below before using it.

### 1. Changing the Game Window Size
To change the screen/window size of the game, open the `WindowSetup.gd` file and find:

```gdscript
const WIN_SIZE := Vector2i(300, 300)
```

You can change the values according to your needs.
For example:

```gdscript
const WIN_SIZE := Vector2i(1280, 720)
```
Here:
* `300` = Width (X)
* `300` = Height (Y)

### 2. Moving the Window
You can move the game window freely by **holding the right mouse button and dragging the window**.
This functionality has already been added to `WindowSetup.gd`.
---
I hope this framework is useful for your projects!

**— Ceka :)
