const express = require("express");
const games = express.Router();
const {
  getAllGames,
  getOneGame,
  addGame,
  updateGame,
  deleteGame,
} = require("../queries/games.js");

games.get("/", async (req, res) => {
  try {
    const allGames = await getAllGames();

    if (allGames[0]){
      res.status(200).json(allGames);
    } else {
      res.status(500).json({error: "Server Error"});
    }
  } catch (e) {
    res.status(400).json({error: e});
  }
});

games.get("/:id", async (req, res) => {
  const {id} = req.params;

  try {
    const singleGame = await getOneGame(id);

    if (singleGame.name){
      res.status(200).json(singleGame)
    } else {
      res.status(500).json({error: "Server Error"})
    }
  } catch (e) {
    res.status(400).json({error: e});
  }
});

games.post("/", async (req, res) => {
  const gameToAdd = req.body;

  try {
    const newGame = await addGame(gameToAdd);
    res.status(202).json(newGame);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

games.put("/:id", async (req, res) => {
  const {id} = req.params;
  const updates = req.body;

  try {
    const updatedGame = await updateGame(id, updates);
    res.status(200).json(updatedGame);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

games.delete("/:id", async (req, res) => {
  const {id} = req.params;

  try {
    const deletedGame = await deleteGame(id);
    res.status(200).json(deletedGame);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

module.exports = games;