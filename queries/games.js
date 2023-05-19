const db = require("../db/dbConfig.js");

const getAllGames = async () => {
  try {
    const allGames = await db.any("SELECT * FROM games ORDER BY release");
    return allGames;
  } catch (e) {
    return e;
  }
}

const getOneGame = async (id) => {
  try {
    const singleGame = await db.one("SELECT * FROM games WHERE id=$1", id);
    return singleGame;
  } catch (e) {
    return e;
  }
}

const addGame = async (gameToAdd) => {
  const {name, image, description, platforms, release, lgbt, poc, disability} = gameToAdd;
  try {
    const newGame = await db.one("INSERT INTO games (name, image, description, platforms, release, lgbt, poc, disability) VALUES ($1, $2, $3, $4, $5, $6, $7, $8) RETURNING *", [name, image, description, platforms, release, lgbt, poc, disability]);
    return newGame;
  } catch (e) {
    return e;
  }
}

const updateGame = async (id, game) => {
  const {name, image, description, platforms, release, lgbt, poc, disability} = game;
  try {
    const updatedGame = db.one("UPDATE games SET name=$1, image=$2, description=$3, platforms=$4, release=$5, lgbt=$6, poc=$7, disability=$8 WHERE id=$9 RETURNING *",[name, image, description, platforms, release, lgbt, poc, disability, id]);
    return updatedGame;
  } catch (e) {
    return e;
  }
}

const deleteGame = async (id) => {
  try {
    const deletedGame = await db.one("DELETE FROM games WHERE id=$1 RETURNING *", id);
    return deletedGame;
  } catch (e) {
    return e;
  }
}

module.exports = {
  getAllGames,
  getOneGame,
  addGame,
  updateGame,
  deleteGame
}