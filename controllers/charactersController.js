const express = require("express");
const characters = express.Router();
const {
  getAllCharacters,
  getOneCharacter,
  addCharacter,
  updateCharacter,

} = require("../queries/characters.js");

characters.get("/", async (req, res) => {
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

module.exports = characters;