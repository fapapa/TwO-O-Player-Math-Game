# Planning the TwO-O-Player Math Game

## Nouns

- Game
- Player
- Turn

## Roles

### Game

A *game* is what will keep seperate each instance of a pairing of two players,
and all their turns and answers. Obviously the game will be played more than
once, and maybe there will be more than one game going on at once. It will store
the player pairing, switch between them as they take turns, and direct the
storing of answers, taking away of lives, etc.

### Player

A *player* will store information on the individual user, how many lives they
have remaining. It will have a method for sending an answer to the game.

### Turn

A *turn* will store a question, with its correct answer. When a player answers a
question, it can check against the correct answer to see if the player got it
right.
