const express = require("express");
const characters = express.Router({mergeParams: true});
const {
  getAllCharacters,
  getAllGameCharacters,
  getOneCharacter,
  addCharacter,
  updateCharacter,
  deleteCharacter,
  searchCharacters
} = require("../queries/characters.js");

characters.get("/", async (req, res) => {
  const {gameId} = req.params;

  if (gameId){
    try {
      const allGameCharacters = await getAllGameCharacters(gameId);
      res.status(200).json(allGameCharacters);
    } catch (e) {
      res.status(400).json({error: e});
    }
  } else {
    try {
    const allCharacters = await getAllCharacters();

    if (allCharacters[0]){
      res.status(200).json(allCharacters);
    } else {
      res.status(500).json({error: "Server Error"});
    }
  } catch (e) {
    res.status(400).json({error: e});
  }
  }
  
});

characters.get("/search", async (req, res) => {
  const searchTerm = `%${req.query.character}%`;
  try {
    const searchedCharacters = await searchCharacters(searchTerm);

    res.status(200).json(searchedCharacters);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

characters.get("/:id", async (req, res) => {
  const {id} = req.params;

  try {
    const singleCharacter = await getOneCharacter(id);

    if (singleCharacter.name){
      res.status(200).json(singleCharacter)
    } else {
      res.status(500).json({error: "Server Error"})
    }
  } catch (e) {
    res.status(400).json({error: e});
  }
});

characters.post("/", async (req, res) => {
  const characterToAdd = req.body;

  try {
    const newCharacter = await addCharacter(characterToAdd);
    res.status(202).json(newCharacter);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

characters.put("/:id", async (req, res) => {
  const {id} = req.params;
  const updates = req.body;

  try {
    const updatedCharacter = await updateCharacter(id, updates);
    res.status(200).json(updatedCharacter);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

characters.delete("/:id", async (req, res) => {
  const {id} = req.params;

  try {
    const deletedCharacter = await deleteCharacter(id);
    res.status(200).json(deletedCharacter);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

module.exports = characters;