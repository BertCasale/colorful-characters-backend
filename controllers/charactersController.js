const express = require("express");
const characters = express.Router();
const {
  getAllCharacters
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

module.exports = characters;