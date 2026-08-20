WarioWare

A game full of fun minigames that follows the concept of Mario Party, where you play Wario-related minigames without losing your lives (your garlics)! Do you have what it takes to win?

<img width="1920" height="1080" alt="Blue and Yellow Neon Retro Pixel Art Game Night Game Presentation (5)" src="https://github.com/user-attachments/assets/1367a415-d6cf-4e2a-9f41-28197d0ed17d" />
<img width="1151" height="650" alt="Screenshot 2026-08-20 132905" src="https://github.com/user-attachments/assets/e9362f1f-45cb-4882-8cbb-587186056463" />
<img width="1150" height="645" alt="Screenshot 2026-08-20 132839" src="https://github.com/user-attachments/assets/b0d94037-705c-4511-94e8-01b5a6d5fa64" />
<img width="1148" height="645" alt="Screenshot 2026-08-20 132822" src="https://github.com/user-attachments/assets/734b46b8-2932-4a14-8aca-7f7d00ca53f7" />
<img width="1151" height="648" alt="Screenshot 2026-08-20 132931" src="https://github.com/user-attachments/assets/c213ef55-3a1a-44ef-9d49-f87ebb916e63" />




Rules:
You have 5 lives (garlics), and you have to complete the game by winning the different minigames. If you fail, you lose a life. Lose all 5, and the game is over. Do you have what it takes?


Here's the demo link:
https://vigaash-lingeswaran.itch.io/super-wario-ware
(The link has the game loaded in, can be played without downloading)

Features:
- 2 Minigames
- Fullscreen settings
- Game Over and Winner screens, along with Play Again buttons
- GIF animations on games, next-level screens, and end screen

Games:
- Super Wario Simulator: Collect all of the coins in the time limit in an obstacle course
- Star Collector: Collect all of the 8 stars across the screen
- Garlic Catcher: Catch 10 of the falling garlics before the time runs out!
- Flappy Bird: Flap through 8 pipes without dying!

Controls:
- Super Wario: Use the arrow keys (< and >) for moving forward and backward. Use spacebar to jump.
- Star Collector: Use the mouse to tap the stars!
- Garlic Catcher: Use the arrow keys (< and >) to move side to side.
- Flappy Bird: Use the spacebar to flap through the pipes.

Building Notes/Tech Stack:
- The development/code: The whole project was created using GODOT. There were two parts that I had to develop, one was the actual interface the user would use, and the other was the game's logic.
  - The interface: The interface was created using GODOT, particularly, the 2D node as the root, as well as various other components (TextureRect, Sprite2D, Area2D, CollisionShape2D, Labels).
  - The code: The coding language used was GDscript. This was used for all of the game's logic (Character running, character dying, Character collecting items, etc).
- The images: All of the images' credits go to their original creators (e.g Nintendo).
- No AI Use.

Problems/Solutions
- Score: This was a common problem for most of the games, but it was really evident for the last game, Flappy Bird. This was a hard part because I had to figure out how to reference this score in multiple places at the same time for the first three games. However, in the last game, there were too many different scenes and scripts that this score would have to be saved in. To solve this, I decided it would be best to create a global variable for that game only, so the score could easily be referenced anywhere within the game.
- Obstacle Spawner: This was a problem for me because it was my first time trying to create anything like this. This problem only occurred in the Garlic Catcher and Flappy Bird games. After some research, I realized that there was a timer available to use. From there, I was able to use the timer to set how often a function would occur, which would eventually spawn an obstacle.
- Flappy Bird: This game was hard for me for a multitude of reasons. Firstly, it was the object rotation. I wanted the player's icon to be able to actually rotate and flap according to the angle it was currently in. However, I had no idea whatsoever how to do this. I thought that you could just apply a jump to the character, and the rotation would apply, but that didn't work. After this, I did some research and figured out that you could use a function called deg_to_rad, which could be used to find the angle. From there, the rotation could be applied. Another problem was the obstacle spawner, which was hard because I had to make sure that I created the scene correctly so that even if the gap is at the bottom, the pipes wouldn't end midway through the screen.


I still plan to expand this project to include more games, like PONG or Doodle Jump, as well as make the interface a little more polished. 


Credits:
- Built using the GODOT engine (Windows)
- Fan project inspired by Nintendo (not affiliated)
