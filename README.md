# colorful-characters-backend

### https://colorful-characters.onrender.com

## Characters

### Get all characters ordered by game name alphabetically

https://colorful-characters.onrender.com/characters

### Get one character

https://colorful-characters.onrender.com/characters/:id

example response:
https://colorful-characters.onrender.com/characters/1

    {
      "id": 1,
      "name": "Zevran Arainai",
      "image": "https://images.8tracks.com/cover/i/009/391/542/Sin_t_tulo-1-8510.jpg?rect=0,0,500,500&q=98&fm=jpg&fit=max",
      "description": "Zevran is an elven rogue, assassin specialist, that can potentially become a party member. He is also one of the two romance options that the player character can enter into a relationship with whether the player character is male or female.",
      "protagonist": false,
      "playable": true,
      "lgbt": true,
      "lgbt_type": "Bisexual",
      "poc": false,
      "poc_type": null,
      "disability": false,
      "disability_type": null,
      "game_id": 1,
      "game": "Dragon Age: Origins"
    }

### Search characters

https://colorful-characters.onrender.com/characters/search?character=searchTerm

Show all the characters whose name, lgbt_type, poc_type, or disability_type includes the search term

### New or Edit character fields

- ***name*** string required
- ***image*** string required
- ***description*** string required
- ***protagonist*** boolean
- ***playable*** boolean
- ***lgbt*** boolean
- ***lgbt_type*** string
- ***poc*** boolean
- ***poc_type*** string
- ***disability*** boolean
- ***disability_type*** boolean
- ***game_id*** number

## Games

### Get all games ordered by release year

https://colorful-characters.onrender.com/games

### Get one game

https://colorful-characters.onrender.com/games/:id

example response:
https://colorful-characters.onrender.com/games/1

    {
      "id": 1,
      "name": "Dragon Age: Origins",
      "image": "https://cdn2.steamgriddb.com/file/sgdb-cdn/grid/0a7c563b1e75f1d3555ac12218da520e.png",
      "description": "An RPG set in a fantasy setting. You can customize your character, and have the option to romance 4 different party members. With 3 different classes, a skilltree, and many different companions to mix and match, you can play however suits your style.",
      "platforms": "PC, Mac, Xbox 360, Playstation 3",
      "release": 2009,
      "lgbt": true,
      "poc": false,
      "disability": false
    }
    
### Search games

https://colorful-characters.onrender.com/games/search?game=searchTerm

Show all the games whose name or platforms includes the search term

### New or Edit game fields

- ***name*** string required
- ***image*** string required
- ***description*** string required
- ***platforms*** text
- ***release*** 4 digit number required
- ***lgbt*** boolean
- ***poc*** boolean
- ***disability*** boolean

### Get all the characters of a specific game

https://colorful-characters.onrender.com/games/:id/characters
