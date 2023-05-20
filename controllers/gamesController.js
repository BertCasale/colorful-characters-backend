const express = require("express");
const games = express.Router();
const {
  getAllGames,
  getOneGame,
  addGame,
  updateGame,
  deleteGame,
  searchGames
} = require("../queries/games.js");
const characterController = require("./charactersController.js");

games.use("/:gameId/characters", characterController)

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

games.get("/search", async (req, res) => {
  const searchTerm = `%${req.query.game}%`;
  try {
    const searchedGames = await searchGames(searchTerm);
    
    res.status(200).json(searchedGames);
  } catch (error) {
    res.status(400).json({ error: error });
  }
});

games.get("/:gameId", async (req, res) => {
  const {gameId} = req.params;

  try {
    const singleGame = await getOneGame(gameId);

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

games.put("/:gameId", async (req, res) => {
  const {gameId} = req.params;
  const updates = req.body;

  try {
    const updatedGame = await updateGame(gameId, updates);
    res.status(200).json(updatedGame);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

games.delete("/:gameId", async (req, res) => {
  const {gameId} = req.params;

  try {
    const deletedGame = await deleteGame(gameId);
    res.status(200).json(deletedGame);
  } catch (e) {
    res.status(400).json({error: e});
  }
});

module.exports = games;