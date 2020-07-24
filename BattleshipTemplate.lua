--[[

Have a go at making a textbased game of battleships in this file.

Rules:
  - Generate a 6 x 6 board
  - Randomly place the 3 following ships on both sides
    - Destroyer
    - Cruiser
    - Battleship
  - Let the player enter coordinates to fire
  - Simulate the opponents go
  - Reveal result
  - Display the winner
  
Example output:

0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0 
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 | 0 0 0 0 0 0 0 0

. = Miss
x = Hit
]]