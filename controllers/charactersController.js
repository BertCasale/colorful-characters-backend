const express = require("express");
const characters = express.Router();
const {
  getAllCharacters,
  getOneCharacter,
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



module.exports = characters;